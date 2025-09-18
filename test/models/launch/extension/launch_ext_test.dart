import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateTime Extensions', () {
    test('formatDateWithDays returns From for future date', () {
      final future = DateTime.now().add(const Duration(days: 5));
      final result = future.formatDateWithDays();

      expect(result, isA<From>());
      expect((result as From).formattedDate, '4');
    });

    test('formatDateWithDays returns Since for past date', () {
      final past = DateTime.now().subtract(const Duration(days: 3));
      final result = past.formatDateWithDays();

      expect(result, isA<Since>());
      expect((result as Since).formattedDate, '3');
    });

    test('formatDateWithDays returns Unknown for null', () {
      DateTime? date;
      final result = date.formatDateWithDays();
      expect(result, isA<Unknown>());
    });

    test('toFormattedTime returns empty string for null', () {
      DateTime? date;
      expect(date.formatDate(), '');
    });

    test('toFormattedTime returns formatted string', () {
      final date = DateTime.utc(2025, 9, 6, 13, 0); // 1 PM UTC
      final formatted = date.formatDate();
      expect(formatted, '01:00 PM, Sep 2025');
    });
  });

  group('LinksResourceExtension', () {
    test('toResource converts NetworkLaunchLinksModel to LinksResource', () {
      final network = const NetworkLaunchLinksModel(
        missionPatch: 'patch.png',
        missionPatchSmall: 'patch_small.png',
        articleLink: 'https://article.com',
        wikipedia: 'https://wiki.com',
        youtubeId: 'abcd1234',
        flickrImages: ['img1.png', 'img2.png'],
      );

      final resource = network.toResource();

      expect(resource.missionPatch, 'patch.png');
      expect(resource.missionPatchSmall, 'patch_small.png');
      expect(resource.articleLink, 'https://article.com');
      expect(resource.wikipedia, 'https://wiki.com');
      expect(resource.youtubeId, 'abcd1234');
      expect(resource.flickrImages, ['img1.png', 'img2.png']);
    });
  });

  group('RocketResourceExtension', () {
    test('toResource converts NetworkRocketModel to RocketResource', () {
      final network = const NetworkRocketModel(
          rocketId: 'r1', name: 'Falcon 9', type: 'FT');

      final resource = network.toResource();

      expect(resource.rocketName, 'Falcon 9');
      expect(resource.rocketType, 'FT');
    });
  });

  group('LaunchResourceExtension', () {
    test('toResource converts NetworkLaunchModel to LaunchResource', () {
      final network = NetworkLaunchModel(
        id: 'l1',
        flightNumber: 42,
        missionName: 'Mission Test',
        launchDate: DateTime.utc(2025, 9, 6, 13, 0),
        rocket: const NetworkLaunchRocketModel(
            id: 'r1', name: 'Falcon 9', type: 'FT'),
        success: true,
        links: const NetworkLaunchLinksModel(
          missionPatch: 'patch.png',
        ),
      );

      final resource = network.toResource();

      expect(resource.id, 'l1');
      expect(resource.flightNumber, 42);
      expect(resource.missionName, 'Mission Test');
      expect(resource.launchDays, isNotNull);
      expect(resource.launchTime, '01:00 PM, Sep 2025');
      expect(resource.rocket?.rocketName, 'Falcon 9');
      expect(resource.links?.missionPatch, 'patch.png');
      expect(resource.launchSuccess, true);
    });
  });

  group('LaunchFullResourceExtension', () {
    test('toResource converts NetworkLaunchFullModel to LaunchFullResource',
        () {
      final network = NetworkLaunchFullModel(
        id: 'lf1',
        flightNumber: 1,
        missionName: 'Full Mission',
        launchDate: DateTime.utc(2025, 9, 6, 13, 0),
        rocket: const NetworkLaunchRocketModel(
            id: 'r1', name: 'Falcon Heavy', type: 'FT'),
        success: true,
        links: const NetworkLaunchLinksModel(
          missionPatch: 'full_patch.png',
        ),
      );

      final resource = network.toResource();

      expect(resource.id, 'lf1');
      expect(resource.missionName, 'Full Mission');
      expect(resource.rocket?.rocketName, 'Falcon Heavy');
      expect(resource.links?.missionPatch, 'full_patch.png');
    });
  });
}
