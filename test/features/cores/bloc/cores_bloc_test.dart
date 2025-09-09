import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/cores/bloc/cores_bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/model/core_filter_status.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/cores_ext.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mock Repository
class MockCoresRepository extends Mock implements CoresRepository {}

// Test data
final testCores = [
  const CoreResource(
    coreSerial: 'B1051',
    block: 5,
    status: 'active',
    originalLaunch: '2019-03-02T07:45:00.000Z',
    originalLaunchUnix: 1551512700,
    missions: [
      MissionResource(name: 'Demo Mission', flight: 1),
      MissionResource(name: 'Test Mission', flight: 2),
    ],
    reuseCount: 2,
  ),
  const CoreResource(
    coreSerial: 'B1049',
    block: 4,
    status: 'lost',
    originalLaunch: '2018-09-10T04:45:00.000Z',
    originalLaunchUnix: 1536554700,
    missions: [
      MissionResource(name: 'Satellite Launch', flight: 3),
    ],
    reuseCount: 1,
  ),
  const CoreResource(
    coreSerial: 'B1050',
    block: 3,
    status: 'inactive',
    originalLaunch: '2017-01-01T00:00:00.000Z',
    originalLaunchUnix: 1483228800,
    missions: [],
    reuseCount: 0,
  ),
];

void main() {
  late CoresRepository repository;
  late CoresBloc bloc;

  setUp(() {
    repository = MockCoresRepository();
    bloc = CoresBloc(repository);
  });

  tearDown(() {
    bloc.close();
  });

  group('CoresBloc', () {
    group('CoresLoadEvent', () {
      blocTest<CoresBloc, CoresState>(
        'emits [loading, success] when getCores succeeds with data',
        build: () {
          when(() => repository.getCores(
                hasId: true,
                limit: null,
                offset: null,
              )).thenAnswer((_) async => testCores);
          return bloc;
        },
        act: (bloc) => bloc.add(const CoresLoadEvent()),
        expect: () => [
          const CoresState.loading(),
          CoresState.success(cores: testCores, filteredCores: testCores),
        ],
        verify: (_) {
          verify(() => repository.getCores(
                hasId: true,
                limit: null,
                offset: null,
              )).called(1);
        },
      );

      blocTest<CoresBloc, CoresState>(
        'emits [loading, empty] when getCores returns empty list',
        build: () {
          when(() => repository.getCores(
                hasId: true,
                limit: null,
                offset: null,
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
          when(() => repository.getCores(
                hasId: true,
                limit: null,
                offset: null,
              )).thenThrow(Exception('Failed to load'));
          return bloc;
        },
        act: (bloc) => bloc.add(const CoresLoadEvent()),
        expect: () => [
          const CoresState.loading(),
          const CoresState.error('Exception: Failed to load'),
        ],
      );

      test('stores cores in allCores when load succeeds', () async {
        when(() => repository.getCores(
              hasId: true,
              limit: null,
              offset: null,
            )).thenAnswer((_) async => testCores);

        bloc.add(const CoresLoadEvent());
        await expectLater(
          bloc.stream,
          emitsInOrder([
            const CoresState.loading(),
            CoresState.success(cores: testCores, filteredCores: testCores),
          ]),
        );

        expect(bloc.allCores, equals(testCores));
      });
    });

    group('CoresRefreshEvent', () {
      blocTest<CoresBloc, CoresState>(
        'emits [loading, success] and updates allCores',
        build: () {
          when(() => repository.getCores(
                hasId: true,
                limit: null,
                offset: null,
              )).thenAnswer((_) async => testCores);
          return bloc;
        },
        act: (bloc) => bloc.add(const CoresRefreshEvent()),
        expect: () => [
          const CoresState.loading(),
          CoresState.success(cores: testCores, filteredCores: testCores),
        ],
        verify: (bloc) {
          expect(bloc.allCores, equals(testCores));
        },
      );
    });

    group('CoresFilterEvent', () {
      blocTest<CoresBloc, CoresState>(
        'filters cores by search query (core serial)',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(searchQuery: 'B1051'),
        ),
        expect: () => [
          CoresState.success(
            cores: testCores,
            filteredCores: [testCores[0]],
            searchQuery: 'B1051',
            statusFilter: null,
          ),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'filters cores by search query (mission name)',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(searchQuery: 'Satellite'),
        ),
        expect: () => [
          CoresState.success(
            cores: testCores,
            filteredCores: [testCores[1]],
            searchQuery: 'Satellite',
            statusFilter: null,
          ),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'filters cores by status',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(
            searchQuery: '',
            statusFilter: CoreFilterStatus.active,
          ),
        ),
        expect: () => [
          CoresState.success(
            cores: testCores,
            filteredCores: [testCores[0]],
            searchQuery: '',
            statusFilter: CoreFilterStatus.active,
          ),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'filters cores by both search and status',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(
            searchQuery: 'B105',
            statusFilter: CoreFilterStatus.active,
          ),
        ),
        expect: () => [
          CoresState.success(
            cores: testCores,
            filteredCores: [testCores[0]],
            searchQuery: 'B105',
            statusFilter: CoreFilterStatus.active,
          ),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'returns all cores when filter is "all"',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(
            searchQuery: '',
            statusFilter: CoreFilterStatus.all,
          ),
        ),
        expect: () => [
          CoresState.success(
            cores: testCores,
            filteredCores: testCores,
            searchQuery: '',
            statusFilter: CoreFilterStatus.all,
          ),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'emits empty state when allCores is empty',
        build: () {
          bloc.allCores = [];
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(searchQuery: 'test'),
        ),
        expect: () => [
          const CoresState.empty(),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'handles case-insensitive search',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(searchQuery: 'demo mission'),
        ),
        expect: () => [
          CoresState.success(
            cores: testCores,
            filteredCores: [testCores[0]],
            searchQuery: 'demo mission',
            statusFilter: null,
          ),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'returns empty list when no matches found',
        build: () {
          bloc.allCores = testCores;
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(searchQuery: 'nonexistent'),
        ),
        expect: () => [
          const CoresState.notFound(searchQuery: 'nonexistent'),
        ],
      );

      blocTest<CoresBloc, CoresState>(
        'handles null values in core data gracefully',
        build: () {
          bloc.allCores = [
            const CoreResource(
              coreSerial: null,
              missions: null,
              status: null,
            ),
            const CoreResource(
              coreSerial: 'B1051',
              missions: [MissionResource(name: null, flight: 1)],
              status: 'active',
            ),
          ];
          return bloc;
        },
        act: (bloc) => bloc.add(
          const CoresFilterEvent(searchQuery: 'B1051'),
        ),
        expect: () => [
          CoresState.success(
            cores: bloc.allCores,
            filteredCores: [bloc.allCores[1]],
            searchQuery: 'B1051',
            statusFilter: null,
          ),
        ],
      );
    });

    group('State Management', () {
      test('initial state is loading', () {
        expect(bloc.state, const CoresState.loading());
      });

      test('allCores is initially empty', () {
        expect(bloc.allCores, isEmpty);
      });
    });
  });

  group('State Equality', () {
    test('CoresLoadingState equality', () {
      const state1 = CoresLoadingState();
      const state2 = CoresLoadingState();
      expect(state1, equals(state2));
    });

    test('CoresSuccessState equality', () {
      final state1 = CoresState.success(cores: testCores);
      final state2 = CoresState.success(cores: testCores);
      expect(state1, equals(state2));
    });

    test('CoresEmptyState equality', () {
      const state1 = CoresEmptyState();
      const state2 = CoresEmptyState();
      expect(state1, equals(state2));
    });

    test('CoresErrorState equality', () {
      const state1 = CoresErrorState('Error message');
      const state2 = CoresErrorState('Error message');
      expect(state1, equals(state2));
    });
  });

  group('CoreFilterStatus Extension', () {
    test('converts string to correct status', () {
      expect('active'.toStatus(), CoreFilterStatus.active);
      expect('lost'.toStatus(), CoreFilterStatus.lost);
      expect('inactive'.toStatus(), CoreFilterStatus.inactive);
      expect('unknown'.toStatus(), CoreFilterStatus.unknown);
      expect('invalid'.toStatus(), CoreFilterStatus.unknown);
      expect(null.toStatus(), CoreFilterStatus.unknown);
    });
  });
}
