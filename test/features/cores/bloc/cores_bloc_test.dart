import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/cores/bloc/cores_bloc.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../repository/cores_repository_test.dart';

class MockCoresRepository extends Mock implements CoresRepository {}

void main() {
  late MockCoresRepository mockRepository;
  late CoresBloc bloc;

  setUp(() {
    mockRepository = MockCoresRepository();
    bloc = CoresBloc(mockRepository);
  });

  group('CoresBloc', () {
    test('initial state is loading', () {
      expect(bloc.state, const CoresState.loading());
    });

    blocTest<CoresBloc, CoresState>(
      'emits [loading, success] when getCores returns data',
      build: () {
        when(() => mockRepository.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => [mockCoreLost]);
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresLoadEvent()),
      expect: () => [
        const CoresState.loading(),
        const CoresState.success(cores: [mockCoreLost]),
      ],
      verify: (_) {
        verify(() => mockRepository.getCores(hasId: true)).called(1);
      },
    );

    blocTest<CoresBloc, CoresState>(
      'emits [loading, empty] when getCores returns empty list',
      build: () {
        when(() => mockRepository.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => []);
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresLoadEvent()),
      expect: () => [
        const CoresState.loading(),
        const CoresState.empty(),
      ],
    );

    blocTest<CoresBloc, CoresState>(
      'emits [loading, error] when getCores throws exception',
      build: () {
        when(() => mockRepository.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenThrow(Exception('Failed to fetch cores'));
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresLoadEvent()),
      expect: () => [
        const CoresState.loading(),
        const CoresState.error(),
      ],
    );

    blocTest<CoresBloc, CoresState>(
      'handles _CoresRefreshEvent same as load',
      build: () {
        when(() => mockRepository.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => [mockCoreLost]);
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresRefreshEvent()),
      expect: () => [
        const CoresState.loading(),
        const CoresState.success(cores: [mockCoreLost]),
      ],
    );
  });
}
