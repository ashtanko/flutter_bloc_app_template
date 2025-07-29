import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/data.dart';
import '../../mocks.dart';

void main() {
  group('EmailListEvent', () {
    test('EmailListFetched supports value comparison', () {
      expect(EmailListFetched(), EmailListFetched());
    });
  });

  group('EmailListState', () {
    test('EmailListInitial supports value comparison', () {
      expect(EmailListInitial(), EmailListInitial());
    });

    test('EmailListLoading supports value comparison', () {
      expect(EmailListLoading(), EmailListLoading());
    });

    test('EmailListLoaded supports value comparison', () {
      expect(EmailListLoaded(mockEmails), EmailListLoaded(mockEmails));
    });

    test('EmailListEmpty supports value comparison', () {
      expect(EmailListEmpty(), EmailListEmpty());
    });

    test('EmailListLoadFailure supports value comparison', () {
      expect(EmailListLoadFailure(), EmailListLoadFailure());
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

    test('should have EmailListInitial as the initial state', () {
      expect(bloc.state, EmailListInitial());
    });

    group('EmailListFetched event', () {
      blocTest<EmailListBloc, EmailListState>(
        'should emit [Loading, Loaded] when data is fetched successfully',
        build: () {
          when(repository.loadData()).thenAnswer(
            (_) async => mockEmails,
          );
          return bloc;
        },
        act: (bloc) => bloc.add(EmailListFetched()),
        expect: () => [
          EmailListLoading(),
          EmailListLoaded(mockEmails),
        ],
        verify: (_) => verify(repository.loadData()).called(1),
      );

      blocTest<EmailListBloc, EmailListState>(
        'should emit [Loading, Empty] when fetched list is empty',
        build: () {
          when(repository.loadData()).thenAnswer(
            (_) async => [],
          );
          return bloc;
        },
        act: (bloc) => bloc.add(EmailListFetched()),
        expect: () => [
          EmailListLoading(),
          EmailListEmpty(),
        ],
        verify: (_) => verify(repository.loadData()).called(1),
      );

      blocTest<EmailListBloc, EmailListState>(
        'should emit [Loading, LoadFailure] when fetching throws an exception',
        build: () {
          when(repository.loadData())
              .thenThrow(Exception('something went wrong'));
          return bloc;
        },
        act: (bloc) => bloc.add(EmailListFetched()),
        expect: () => [
          EmailListLoading(),
          EmailListLoadFailure(),
        ],
        verify: (_) => verify(repository.loadData()).called(1),
      );
    });
  });
}
