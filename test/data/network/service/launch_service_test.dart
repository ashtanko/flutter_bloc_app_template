import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/launches_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/launch_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../fixtures_reader.dart';

class MockLaunchService extends Mock implements LaunchService {}

void main() {
  late LaunchService service;
  late LaunchesDataSource dataSource;

  setUp(() async {
    registerFallbackValue(Uri());
    service = MockLaunchService();
    dataSource = LaunchesNetworkDataSource(service);
  });

  group('getAllLaunches', () {
    final mockResponse = 'launches/launches.json'
        .toFixture()
        .map((e) => NetworkLaunchModel.fromJson((e as Map<String, dynamic>)));

    test(
      'should perform a GET request on /launches and return a list of NetworkLaunchModel',
      () async {
        // arrange
        when(
          () => service.fetchLaunches(),
        ).thenAnswer(
          (_) async => Future.value(mockResponse.toList()),
        );

        // act
        final call = await dataSource.getLaunches();
        // assert
        verify(() => service.fetchLaunches());
        expect(call, isA<Success<List<NetworkLaunchModel>>>());
        expect(
            (call as Success<List<NetworkLaunchModel>>).data.isNotEmpty, true);
        verifyNoMoreInteractions(service);
      },
    );

    test('should perform a GET request on /launches and return an error',
        () async {
      // arrange
      when(() => service.fetchLaunches()).thenThrow(Exception('Server error'));

      // act
      final call = await dataSource.getLaunches();

      // assert
      expect(call, isA<Error<List<NetworkLaunchModel>>>());
      verify(() => service.fetchLaunches());
      verifyNoMoreInteractions(service);
    });

    test(
      'should perform a GET request on /launches and return an empty list of NetworkLaunchModel',
      () async {
        // arrange
        when(
          () => service.fetchLaunches(),
        ).thenAnswer(
          (_) async => Future.value(<NetworkLaunchModel>[]),
        );

        // act
        final call = await dataSource.getLaunches();
        // assert
        verify(() => service.fetchLaunches());
        expect(call, isA<Success<List<NetworkLaunchModel>>>());
        expect((call as Success<List<NetworkLaunchModel>>).data.isEmpty, true);
        verifyNoMoreInteractions(service);
      },
    );
  });

  group('fetchLaunch', () {
    final mockResponse = NetworkLaunchFullModel.fromJson(
        'launches/launch.json'.toFixtureObject());
    final mockResponse2 = NetworkLaunchFullModel.fromJson(
        'launches/launch2.json'.toFixtureObject());
    final mockFlightNumber = 1;

    test(
      'should perform a GET request on /launch and return a NetworkLaunchFullModel',
      () async {
        // arrange
        when(
          () => service.fetchLaunch(mockFlightNumber),
        ).thenAnswer(
          (_) async => Future.value(mockResponse),
        );

        // act
        final call = await dataSource.getLaunch(mockFlightNumber);
        // assert
        verify(() => service.fetchLaunch(mockFlightNumber));
        expect(call, isA<Success<NetworkLaunchFullModel>>());
        expect((call as Success<NetworkLaunchFullModel>).data.flightNumber, 1);
        verifyNoMoreInteractions(service);
      },
    );
    test(
      'should perform a GET request on /launch and return a NetworkLaunchFullModel with different payload',
      () async {
        // arrange
        when(
          () => service.fetchLaunch(mockFlightNumber),
        ).thenAnswer(
          (_) async => Future.value(mockResponse2),
        );

        // act
        final call = await dataSource.getLaunch(mockFlightNumber);
        // assert
        verify(() => service.fetchLaunch(mockFlightNumber));
        expect(call, isA<Success<NetworkLaunchFullModel>>());
        expect((call as Success<NetworkLaunchFullModel>).data.flightNumber, 2);
        verifyNoMoreInteractions(service);
      },
    );
    test('should perform a GET request on /launch and return an error',
        () async {
      final mockFlightNumber = 1;
      // arrange
      when(() => service.fetchLaunch(mockFlightNumber))
          .thenThrow(Exception('Server error'));

      // act
      final call = await dataSource.getLaunch(mockFlightNumber);

      // assert
      expect(call, isA<Error<NetworkLaunchFullModel>>());
      verify(() => service.fetchLaunch(mockFlightNumber));
      verifyNoMoreInteractions(service);
    });
  });
}
