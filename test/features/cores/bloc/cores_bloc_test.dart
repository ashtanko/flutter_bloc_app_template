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
      'emits [loading, success] when CoresLoadEvent returns data',
      build: () {
        when(() => mockRepository.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => [mockCoreLost, mockCoreActive]);
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresLoadEvent()),
      expect: () => [
        const CoresState.loading(),
        const CoresState.success(cores: [mockCoreLost, mockCoreActive]),
      ],
    );

    blocTest<CoresBloc, CoresState>(
      'emits [loading, empty] when CoresLoadEvent returns empty list',
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
      'emits [loading, error] when CoresLoadEvent throws exception',
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
      'CoresFilterEvent filters by searchQuery and statusFilter',
      build: () {
        // set initial _allCores
        bloc.allCores = [mockCoreLost, mockCoreActive];
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresFilterEvent(
        searchQuery: 'Merlin2C',
        statusFilter: 'lost',
      )),
      expect: () => [
        const CoresState.success(cores: [mockCoreLost]),
      ],
    );

    blocTest<CoresBloc, CoresState>(
      'CoresFilterEvent with empty searchQuery and statusFilter '
      '"All" returns all',
      build: () {
        bloc.allCores = [mockCoreLost, mockCoreActive];
        return bloc;
      },
      act: (bloc) => bloc.add(const CoresFilterEvent(
        searchQuery: '',
        statusFilter: 'All',
      )),
      expect: () => [
        const CoresState.success(cores: [mockCoreLost, mockCoreActive]),
      ],
    );

    blocTest<CoresBloc, CoresState>(
      'CoresRefreshEvent reloads cores and updates _allCores',
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
