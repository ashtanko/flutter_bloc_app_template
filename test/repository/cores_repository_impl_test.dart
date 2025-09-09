import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/cores_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCoresDataSource extends Mock implements CoresDataSource {}

void main() {
  late MockCoresDataSource mockDataSource;
  late CoresRepositoryImpl repository;

  setUp(() {
    mockDataSource = MockCoresDataSource();
    repository = CoresRepositoryImpl(mockDataSource);
  });

  group('CoresRepositoryImpl', () {
    group('getCores', () {
      test('returns list of CoreResource when success', () async {
        final mockNetworkCores = [
          const NetworkCoreModel(
            coreSerial: 'B1049',
            block: 5,
            status: 'active',
          ),
        ];

        when(() => mockDataSource.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => ApiResult.success(mockNetworkCores));

        final result = await repository.getCores();

        expect(result, isA<List<CoreResource>>());
        expect(result.first.coreSerial, 'B1049');
      });

      test('throws exception when error', () async {
        when(() => mockDataSource.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => const ApiResult.error('Network error'));

        expect(() => repository.getCores(), throwsA(isA<Exception>()));
      });

      test('throws exception when loading', () async {
        when(() => mockDataSource.getCores(
              hasId: any(named: 'hasId'),
              limit: any(named: 'limit'),
              offset: any(named: 'offset'),
            )).thenAnswer((_) async => const ApiResult.loading());

        expect(() => repository.getCores(), throwsA(isA<Exception>()));
      });
    });

    group('getCore', () {
      test('returns CoreResource when success', () async {
        final mockNetworkCore = const NetworkCoreModel(
          coreSerial: 'B1049',
          block: 5,
          status: 'active',
        );

        when(() => mockDataSource.getCore('B1049'))
            .thenAnswer((_) async => ApiResult.success(mockNetworkCore));

        final result = await repository.getCore('B1049');

        expect(result, isA<CoreResource>());
        expect(result.coreSerial, 'B1049');
        expect(result.status, 'active');
      });

      test('throws exception when error', () async {
        when(() => mockDataSource.getCore('B1049'))
            .thenAnswer((_) async => const ApiResult.error('Not found'));

        expect(() => repository.getCore('B1049'), throwsA(isA<Exception>()));
      });

      test('throws exception when loading', () async {
        when(() => mockDataSource.getCore('B1049'))
            .thenAnswer((_) async => const ApiResult.loading());

        expect(() => repository.getCore('B1049'), throwsA(isA<Exception>()));
      });
    });
  });
}
