import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/rocket_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/rocket/rocket_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixtures_reader.dart';

class MockRocketService extends Mock implements RocketService {}

void main() {
  late RocketService service;
  late RocketDataSource dataSource;

  setUp(() async {
    registerFallbackValue(Uri());
    service = MockRocketService();
    dataSource = RocketNetworkDataSource(service);
  });

  group('getAllRockets', () {
    final mockResponse = 'rockets/rockets.json'
        .toFixture()
        .map((e) => NetworkRocketModel.fromJson((e as Map<String, dynamic>)));

    test(
      'should perform a GET request on /rockets and return a list of NetworkRocketModel',
      () async {
        // arrange
        when(
          () => service.fetchRockets(),
        ).thenAnswer(
          (_) async => Future.value(mockResponse.toList()),
        );

        // act
        final call = await dataSource.getRockets();
        // assert
        verify(() => service.fetchRockets());
        expect(call, isA<Success<List<NetworkRocketModel>>>());
        expect(
            (call as Success<List<NetworkRocketModel>>).data.isNotEmpty, true);
        verifyNoMoreInteractions(service);
      },
    );

    test('should perform a GET request on /rockets and return an error',
        () async {
      // arrange
      when(() => service.fetchRockets()).thenThrow(Exception('Server error'));

      // act
      final call = await dataSource.getRockets();

      // assert
      expect(call, isA<Error<List<NetworkRocketModel>>>());
      verify(() => service.fetchRockets());
      verifyNoMoreInteractions(service);
    });

    test(
      'should perform a GET request on /rockets and return an empty list of NetworkRocketModel',
      () async {
        // arrange
        when(
          () => service.fetchRockets(),
        ).thenAnswer(
          (_) async => Future.value(<NetworkRocketModel>[]),
        );

        // act
        final call = await dataSource.getRockets();
        // assert
        verify(() => service.fetchRockets());
        expect(call, isA<Success<List<NetworkRocketModel>>>());
        expect((call as Success<List<NetworkRocketModel>>).data.isEmpty, true);
        verifyNoMoreInteractions(service);
      },
    );

    group('fetchLaunch', () {
      final mockResponse =
          NetworkRocketModel.fromJson('rockets/rocket.json'.toFixtureObject());
      final mockResponse2 =
          NetworkRocketModel.fromJson('rockets/rocket2.json'.toFixtureObject());
      final mockRocketId = 'falcon1';
      final mockRocketId2 = 'falcon9';

      test(
        'should perform a GET request on /rocket and return a NetworkRocketModel',
        () async {
          // arrange
          when(
            () => service.fetchRocket(mockRocketId),
          ).thenAnswer(
            (_) async => Future.value(mockResponse),
          );

          // act
          final call = await dataSource.getRocket(mockRocketId);
          // assert
          verify(() => service.fetchRocket(mockRocketId));
          expect(call, isA<Success<NetworkRocketModel>>());
          expect(
              (call as Success<NetworkRocketModel>).data.rocketId, 'falcon1');
          verifyNoMoreInteractions(service);
        },
      );
      test(
        'should perform a GET request on /rocket and return a NetworkRocketModel with different payload',
        () async {
          // arrange
          when(
            () => service.fetchRocket(mockRocketId2),
          ).thenAnswer(
            (_) async => Future.value(mockResponse2),
          );

          // act
          final call = await dataSource.getRocket(mockRocketId2);
          // assert
          verify(() => service.fetchRocket(mockRocketId2));
          expect(call, isA<Success<NetworkRocketModel>>());
          expect(
              (call as Success<NetworkRocketModel>).data.rocketId, 'falcon9');
          verifyNoMoreInteractions(service);
        },
      );
      test('should perform a GET request on /rocket and return an error',
          () async {
        // arrange
        when(() => service.fetchRocket(mockRocketId))
            .thenThrow(Exception('Server error'));

        // act
        final call = await dataSource.getRocket(mockRocketId);

        // assert
        expect(call, isA<Error<NetworkRocketModel>>());
        verify(() => service.fetchRocket(mockRocketId));
        verifyNoMoreInteractions(service);
      });
    });
  });
}
