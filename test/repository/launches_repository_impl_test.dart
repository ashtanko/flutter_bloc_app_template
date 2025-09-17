import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_full_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_resource.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLaunchesDataSource extends Mock implements LaunchesDataSource {}

void main() {
  late LaunchesRepositoryImpl repository;
  late MockLaunchesDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockLaunchesDataSource();
    repository = LaunchesRepositoryImpl(mockDataSource);
  });

  group('LaunchesRepositoryImpl', () {
    group('getLaunches', () {
      test('returns list of LaunchResource when success', () async {
        final networkLaunch =
            const NetworkLaunchModel(flightNumber: 1, missionName: 'Test');
        when(() => mockDataSource.getLaunches(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
              launchYear: any(named: 'launchYear'),
              launchSuccess: any(named: 'launchSuccess'),
              order: any(named: 'order'),
            )).thenAnswer(
          (_) async => ApiResult.success([networkLaunch]),
        );

        final result = await repository.getLaunches();

        expect(result, isA<List<LaunchResource>>());
        expect(result.first.missionName, equals('Test'));
      });

      test('throws Exception when error', () async {
        when(() => mockDataSource.getLaunches(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
              launchYear: any(named: 'launchYear'),
              launchSuccess: any(named: 'launchSuccess'),
              order: any(named: 'order'),
            )).thenAnswer(
          (_) async => const ApiResult.error('Something went wrong'),
        );

        expect(
          () => repository.getLaunches(),
          throwsA(isA<Exception>()),
        );
      });

      test('throws Exception when loading', () async {
        when(() => mockDataSource.getLaunches(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
              launchYear: any(named: 'launchYear'),
              launchSuccess: any(named: 'launchSuccess'),
              order: any(named: 'order'),
            )).thenAnswer(
          (_) async => const ApiResult.loading(),
        );

        expect(
          () => repository.getLaunches(),
          throwsA(isA<Exception>()),
        );
      });
    });

    group('getLaunch', () {
      test('returns LaunchFullResource when success', () async {
        final networkFull = const NetworkLaunchFullModel(
            flightNumber: 42, missionName: 'Falcon');
        when(() => mockDataSource.getLaunch(42)).thenAnswer(
          (_) async => ApiResult.success(networkFull),
        );

        final result = await repository.getLaunch(42);

        expect(result, isA<LaunchFullResource>());
        expect(result.missionName, equals('Falcon'));
      });

      test('throws Exception when error', () async {
        when(() => mockDataSource.getLaunch(42)).thenAnswer(
          (_) async => const ApiResult.error('Not found'),
        );

        expect(
          () => repository.getLaunch(42),
          throwsA(isA<Exception>()),
        );
      });

      test('throws Exception when loading', () async {
        when(() => mockDataSource.getLaunch(42)).thenAnswer(
          (_) async => const ApiResult.loading(),
        );

        expect(
          () => repository.getLaunch(42),
          throwsA(isA<Exception>()),
        );
      });
    });
  });
}
