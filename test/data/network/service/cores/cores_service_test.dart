import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/cores_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/cores/cores_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixtures_reader.dart';

class MockCoresService extends Mock implements CoresService {}

void main() {
  late CoresService service;
  late CoresDataSource dataSource;

  setUp(() async {
    registerFallbackValue(Uri());
    service = MockCoresService();
    dataSource = CoresNetworkDataSource(service);
  });

  group('getCores', () {
    final mockResponse = 'cores/cores.json'
        .toFixture()
        .map((e) => NetworkCoreModel.fromJson((e as Map<String, dynamic>)));

    test(
      'should perform a GET request on /cores and return a list of NetworkCoreModel',
      () async {
        // arrange
        when(
          () => service.fetchCores(),
        ).thenAnswer(
          (_) async => Future.value(mockResponse.toList()),
        );

        // act
        final call = await dataSource.getCores();
        // assert
        verify(() => service.fetchCores());
        expect(call, isA<Success<List<NetworkCoreModel>>>());
        expect((call as Success<List<NetworkCoreModel>>).data.isNotEmpty, true);
        verifyNoMoreInteractions(service);
      },
    );

    test('should perform a GET request on /cores and return an error',
        () async {
      // arrange
      when(() => service.fetchCores()).thenThrow(Exception('Server error'));

      // act
      final call = await dataSource.getCores();

      // assert
      expect(call, isA<Error<List<NetworkCoreModel>>>());
      verify(() => service.fetchCores());
      verifyNoMoreInteractions(service);
    });

    test(
      'should perform a GET request on /cores and return an empty list of NetworkCoreModel',
      () async {
        // arrange
        when(
          () => service.fetchCores(),
        ).thenAnswer(
          (_) async => Future.value(<NetworkCoreModel>[]),
        );

        // act
        final call = await dataSource.getCores();
        // assert
        verify(() => service.fetchCores());
        expect(call, isA<Success<List<NetworkCoreModel>>>());
        expect((call as Success<List<NetworkCoreModel>>).data.isEmpty, true);
        verifyNoMoreInteractions(service);
      },
    );
  });

  group('fetchCore', () {
    final mockResponse =
        NetworkCoreModel.fromJson('cores/core.json'.toFixtureObject());
    final mockResponse2 =
        NetworkCoreModel.fromJson('cores/core2.json'.toFixtureObject());
    final coreSerial = 'Merlin2A';

    test(
      'should perform a GET request on /core and return a NetworkCoreModel',
      () async {
        // arrange
        when(
          () => service.fetchCore(coreSerial),
        ).thenAnswer(
          (_) async => Future.value(mockResponse),
        );

        // act
        final call = await dataSource.getCore(coreSerial);
        // assert
        verify(() => service.fetchCore(coreSerial));
        expect(call, isA<Success<NetworkCoreModel>>());
        expect((call as Success<NetworkCoreModel>).data.coreSerial, 'Merlin1A');
        verifyNoMoreInteractions(service);
      },
    );
    test(
      'should perform a GET request on /core and return a NetworkCoreModel with different payload',
      () async {
        // arrange
        when(
          () => service.fetchCore(coreSerial),
        ).thenAnswer(
          (_) async => Future.value(mockResponse2),
        );

        // act
        final call = await dataSource.getCore(coreSerial);
        // assert
        verify(() => service.fetchCore(coreSerial));
        expect(call, isA<Success<NetworkCoreModel>>());
        expect((call as Success<NetworkCoreModel>).data.coreSerial, 'Merlin2A');
        verifyNoMoreInteractions(service);
      },
    );
    test('should perform a GET request on /core and return an error', () async {
      final coreSerial = 'Merlin2A';
      // arrange
      when(() => service.fetchCore(coreSerial))
          .thenThrow(Exception('Server error'));

      // act
      final call = await dataSource.getCore(coreSerial);

      // assert
      expect(call, isA<Error<NetworkCoreModel>>());
      verify(() => service.fetchCore(coreSerial));
      verifyNoMoreInteractions(service);
    });
  });
}
