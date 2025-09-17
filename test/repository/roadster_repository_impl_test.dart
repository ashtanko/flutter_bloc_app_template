import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/roadster_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_bloc_app_template/repository/roadster_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRoadsterDataSource extends Mock implements RoadsterDataSource {}

void main() {
  late RoadsterRepositoryImpl repository;
  late MockRoadsterDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockRoadsterDataSource();
    repository = RoadsterRepositoryImpl(mockDataSource);
  });

  group('RoadsterRepositoryImpl', () {
    group('getRoadster', () {
      test('returns RoadsterResource when success', () async {
        final networkRoadster = const NetworkRoadsterModel(
          name: "Elon Musk's Tesla Roadster",
        );
        when(() => mockDataSource.getRoadster()).thenAnswer(
          (_) async => ApiResult.success(networkRoadster),
        );

        final result = await repository.getRoadster();

        expect(result, isA<RoadsterResource>());
        expect(result.name, equals("Elon Musk's Tesla Roadster"));
      });

      test('throws Exception when error', () async {
        when(() => mockDataSource.getRoadster()).thenAnswer(
          (_) async => const ApiResult.error('Not found'),
        );

        expect(
          () => repository.getRoadster(),
          throwsA(isA<Exception>()),
        );
      });

      test('throws Exception when loading', () async {
        when(() => mockDataSource.getRoadster()).thenAnswer(
          (_) async => const ApiResult.loading(),
        );

        expect(
          () => repository.getRoadster(),
          throwsA(isA<Exception>()),
        );
      });
    });
  });
}
