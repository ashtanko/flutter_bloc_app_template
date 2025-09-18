import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/rocket_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_resource.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRocketDataSource extends Mock implements RocketDataSource {}

void main() {
  late RocketRepositoryImpl repository;
  late MockRocketDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockRocketDataSource();
    repository = RocketRepositoryImpl(mockDataSource);
  });

  group('RocketRepositoryImpl', () {
    group('getRocket', () {
      test('returns RocketResource when success', () async {
        final networkRocket =
            const NetworkRocketModel(rocketId: 'falcon9', name: 'Falcon 9');
        when(() => mockDataSource.getRocket('falcon9')).thenAnswer(
          (_) async => ApiResult.success(networkRocket),
        );

        final result = await repository.getRocket('falcon9');

        expect(result, isA<RocketResource>());
        expect(result.rocketName, equals('Falcon 9'));
      });

      test('throws Exception when error', () async {
        when(() => mockDataSource.getRocket('falcon9')).thenAnswer(
          (_) async => const ApiResult.error('Not found'),
        );

        expect(
          () => repository.getRocket('falcon9'),
          throwsA(isA<Exception>()),
        );
      });

      test('throws Exception when loading', () async {
        when(() => mockDataSource.getRocket('falcon9')).thenAnswer(
          (_) async => const ApiResult.loading(),
        );

        expect(
          () => repository.getRocket('falcon9'),
          throwsA(isA<Exception>()),
        );
      });
    });

    group('getRockets', () {
      test('returns list of RocketResource when success', () async {
        final networkRockets = [
          const NetworkRocketModel(rocketId: 'falcon9', name: 'Falcon 9'),
          const NetworkRocketModel(
              rocketId: 'falconheavy', name: 'Falcon Heavy'),
        ];
        when(() => mockDataSource.getRockets(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer(
          (_) async => ApiResult.success(networkRockets),
        );

        final result = await repository.getRockets();

        expect(result, isA<List<RocketResource>>());
        expect(result.length, 2);
        expect(result.first.rocketName, equals('Falcon 9'));
        expect(result.last.rocketName, equals('Falcon Heavy'));
      });

      test('throws Exception when error', () async {
        when(() => mockDataSource.getRockets(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer(
          (_) async => const ApiResult.error('Something went wrong'),
        );

        expect(
          () => repository.getRockets(),
          throwsA(isA<Exception>()),
        );
      });

      test('throws Exception when loading', () async {
        when(() => mockDataSource.getRockets(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer(
          (_) async => const ApiResult.loading(),
        );

        expect(
          () => repository.getRockets(),
          throwsA(isA<Exception>()),
        );
      });
    });
  });
}
