import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/data.dart';
import '../../mocks.dart';

void main() {
  group('Email List Event Tests', () {
    group('EmailListFetched', () {
      test('supports value comparison', () {
        expect(EmailListFetched(), EmailListFetched());
      });
    });
  });

  group('Email List State Tests', () {
    group('EmailListInitial', () {
      test('supports value comparison', () {
        expect(EmailListInitial(), EmailListInitial());
      });
    });

    group('EmailListLoading', () {
      test('supports value comparison', () {
        expect(EmailListLoading(), EmailListLoading());
      });
    });

    group('EmailListLoaded', () {
      test('supports value comparison', () {
        expect(EmailListLoaded(mockEmails), EmailListLoaded(mockEmails));
      });
    });

    group('EmailListEmpty', () {
      test('supports value comparison', () {
        expect(EmailListEmpty(), EmailListEmpty());
      });
    });

    group('EmailListLoadFailure', () {
      test('supports value comparison', () {
        expect(EmailListLoadFailure(), EmailListLoadFailure());
      });
    });
  });

  group('EmailListBloc', () {
    late EmailListRepository repository;
    late EmailListBloc bloc;

    setUp(() {
      repository = MockEmailListRepository();
      bloc = EmailListBloc(messagesRepository: repository);
    });

    tearDown(() => bloc.close());

    test('state returns correct state initially', () {
      expect(bloc.state, EmailListInitial());
    });

    group('fetchData', () {
      blocTest<EmailListBloc, EmailListState>(
        'fetches data correctly',
        build: () {
          when(repository.loadData()).thenAnswer(
            (_) => Future.value(mockEmails),
          );
          return bloc;
        },
        act: (bloc) async => bloc.add(
          EmailListFetched(),
        ),
        verify: (_) => verify(repository.loadData()).called(1),
        expect: () => [
          EmailListLoading(),
          EmailListLoaded(mockEmails),
        ],
      );

      blocTest<EmailListBloc, EmailListState>(
        'fetches data correctly but list is empty',
        build: () {
          when(repository.loadData()).thenAnswer(
            (_) => Future.value([]),
          );
          return bloc;
        },
        act: (bloc) async => bloc.add(
          EmailListFetched(),
        ),
        verify: (_) => verify(repository.loadData()).called(1),
        expect: () => [
          EmailListLoading(),
          EmailListEmpty(),
        ],
      );

      blocTest<EmailListBloc, EmailListState>(
        'can throw an exception',
        build: () {
          when(repository.loadData())
              .thenThrow(Exception('something went wrong'));
          return bloc;
        },
        act: (bloc) async => bloc.add(
          EmailListFetched(),
        ),
        verify: (_) => verify(repository.loadData()).called(1),
        expect: () => [
          EmailListLoading(),
          EmailListLoadFailure(),
        ],
      );
    });
  });
}
