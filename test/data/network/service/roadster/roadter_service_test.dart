import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_bloc_app_template/data/network/data_source/roadster_network_data_source.dart';
import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/data/network/service/roadster/roadster_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixtures_reader.dart';

class MockRoadsterService extends Mock implements RoadsterService {}

void main() {
  late RoadsterService service;
  late RoadsterDataSource dataSource;

  setUp(() async {
    registerFallbackValue(Uri());
    service = MockRoadsterService();
    dataSource = RoadsterNetworkDataSource(service);
  });

  group('fetchRoadster', () {
    final mockResponse = NetworkRoadsterModel.fromJson(
        'roadster/roadster.json'.toFixtureObject());

    test(
      'should perform a GET request on /roadster and return a NetworkRoadsterModel',
      () async {
        // arrange
        when(
          () => service.fetchRoadster(),
        ).thenAnswer(
          (_) async => Future.value(mockResponse),
        );

        // act
        final call = await dataSource.getRoadster();
        // assert
        verify(() => service.fetchRoadster());
        expect(call, isA<Success<NetworkRoadsterModel>>());
        verifyNoMoreInteractions(service);
      },
    );
    test('should perform a GET request on /roadster and return an error',
        () async {
      // arrange
      when(() => service.fetchRoadster()).thenThrow(Exception('Server error'));

      // act
      final call = await dataSource.getRoadster();

      // assert
      expect(call, isA<Error<NetworkRoadsterModel>>());
      verify(() => service.fetchRoadster());
      verifyNoMoreInteractions(service);
    });
  });
}
