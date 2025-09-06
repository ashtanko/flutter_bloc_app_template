import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_site_resource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNetworkRocketModel extends Mock implements NetworkRocketModel {}

class MockNetworkLaunchLinksModel extends Mock
    implements NetworkLaunchLinksModel {}

void main() {
  group('LaunchResourceExtension', () {
    test('should convert NetworkLaunchModel to LaunchResource', () {
      final json = {
        '_id': '123',
        'mission_name': 'Test Mission',
        'launch_date_utc': '2009-07-13T03:35:00.000Z',
        'rocket': {
          'rocket_id': 'rocket123',
          'rocket_type': 'Falcon 9',
          'rocket_name': 'Falcon'
        },
        'launch_success': true,
        'links': {
          'mission_patch': 'patch_url',
          'mission_patch_small': 'patch_small_url',
          'article_link': 'article_url',
          'wikipedia': 'wiki_url',
          'youtube_id': 'youtube123'
        },
      };

      final networkLaunchModel = NetworkLaunchModel.fromJson(json);

      final launchResource = networkLaunchModel.toResource();

      expect(launchResource.id, '123');
      expect(launchResource.missionName, 'Test Mission');
      expect(launchResource.launchDays, isA<Since>());
      expect(launchResource.launchTime, '03:35 AM, Jul 2009');
      expect(launchResource.launchSuccess, true);
    });
  });

  group('LaunchFullResourceExtension', () {
    test('should convert NetworkLaunchFullModel to LaunchFullResource', () {
      final json = {
        '_id': '123',
        'flight_number': 42,
        'mission_name': 'Test Mission',
        'launch_date_utc': '2009-07-13T03:35:00.000Z',
        'rocket': {
          'rocket_id': 'rocket123',
          'rocket_type': 'Falcon 9',
          'rocket_name': 'Falcon'
        },
        'launch_success': true,
        'links': {
          'mission_patch': 'patch_url',
          'mission_patch_small': 'patch_small_url',
          'article_link': 'article_url',
          'wikipedia': 'wiki_url',
          'youtube_id': 'youtube123',
          'reddit_launch': 'http://www.reddit.com/r/spacex/comments/2vjm9e',
          'video_link': 'https://www.youtube.com/watch?v=OvHJSIKP0Hg',
          'presskit':
              'http://www.spacex.com/press/2015/02/11/dscovr-launch-update'
        },
        'ships': ['ELSBETH3', 'GOQUEST', 'GOSEARCHER'],
        'launch_site': {
          'site_id': 'kwajalein_atoll',
          'site_name': 'Kwajalein Atoll',
          'site_name_long': 'Kwajalein Atoll Omelek Island'
        }
      };

      final networkLaunchModel = NetworkLaunchFullModel.fromJson(json);
      final launchResource = networkLaunchModel.toResource();

      // basic fields
      expect(launchResource.id, '123');
      expect(launchResource.flightNumber, 42);
      expect(launchResource.missionName, 'Test Mission');
      expect(launchResource.launchSuccess, true);

      // rocket mapping
      expect(
        launchResource.rocket,
        const RocketResource(
          rocketName: 'Falcon',
          rocketType: 'Falcon 9',
        ),
      );

      // launch site mapping
      expect(
        launchResource.launchSite,
        const LaunchSiteResource(
          siteId: 'kwajalein_atoll',
          siteName: 'Kwajalein Atoll',
          siteNameLong: 'Kwajalein Atoll Omelek Island',
        ),
      );

      // links mapping
      expect(
        launchResource.links,
        const LinksResource(
          missionPatch: 'patch_url',
          missionPatchSmall: 'patch_small_url',
          articleLink: 'article_url',
          wikipedia: 'wiki_url',
          youtubeId: 'youtube123',
          redditLaunch: 'http://www.reddit.com/r/spacex/comments/2vjm9e',
          videoLink: 'https://www.youtube.com/watch?v=OvHJSIKP0Hg',
          presskit:
              'http://www.spacex.com/press/2015/02/11/dscovr-launch-update',
        ),
      );

      // date parsing
      expect(
        launchResource.launchDate,
        'July 13, 2009 - 03:35 UTC',
      );
    });

    test('should handle null optional fields', () {
      final json = {
        '_id': '456',
        'flight_number': 99,
        'mission_name': 'Null Test',
        'launch_date_utc': '2015-01-01T00:00:00.000Z',
      };

      final networkLaunchModel = NetworkLaunchFullModel.fromJson(json);
      final launchResource = networkLaunchModel.toResource();

      expect(launchResource.id, '456');
      expect(launchResource.flightNumber, 99);
      expect(launchResource.rocket, null);
      expect(launchResource.links, null);
      expect(launchResource.launchSite, null);
      expect(launchResource.launchSuccess, null);
    });

    test('should support equality', () {
      final json = {
        '_id': '789',
        'flight_number': 10,
        'mission_name': 'Equality Mission',
        'launch_date_utc': '2020-07-13T03:35:00.000Z',
      };

      final model1 = NetworkLaunchFullModel.fromJson(json);
      final model2 = NetworkLaunchFullModel.fromJson(json);

      expect(model1.toResource(), equals(model2.toResource()));
    });
  });

  group('RocketResourceExtension', () {
    test('should convert NetworkRocketModel to RocketResource', () {
      final networkRocketModel = MockNetworkRocketModel();
      when(networkRocketModel.name).thenReturn('Falcon 9');
      when(networkRocketModel.type).thenReturn('Reusable');

      final rocketResource = networkRocketModel.toResource();

      expect(rocketResource.rocketName, 'Falcon 9');
      expect(rocketResource.rocketType, 'Reusable');
    });
  });

  group('LinksResourceExtension', () {
    test('should convert NetworkLaunchLinksModel to LinksResource', () {
      final networkLinksModel = MockNetworkLaunchLinksModel();
      when(networkLinksModel.missionPatch).thenReturn('patch.png');
      when(networkLinksModel.missionPatchSmall).thenReturn('small_patch.png');
      when(networkLinksModel.articleLink).thenReturn('http://article.com');
      when(networkLinksModel.flickrImages).thenReturn([
        'https://farm9.staticflickr.com/8619/16511407538_9a25c5d8c6_o.jpg',
        'https://farm9.staticflickr.com/8665/16697946612_1284e952b0_o.jpg',
        'https://farm9.staticflickr.com/8570/16698990475_16524a93de_o.jpg',
        'https://farm9.staticflickr.com/8681/16512864259_e849e496b1_o.jpg',
        'https://farm9.staticflickr.com/8637/16079045013_1f0fab9b54_o.jpg',
        'https://farm9.staticflickr.com/8601/16512864369_2bb896c344_o.jpg',
        'https://farm9.staticflickr.com/8646/16697693861_a038331e0a_o.jpg',
        'https://farm9.staticflickr.com/8680/16511407248_093635a243_o.jpg',
        'https://farm9.staticflickr.com/8654/16511594820_451f194d53_o.jpg',
        'https://farm9.staticflickr.com/8603/16673054016_472fb42a20_o.jpg'
      ]);

      final linksResource = networkLinksModel.toResource();

      expect(linksResource.missionPatch, 'patch.png');
      expect(linksResource.missionPatchSmall, 'small_patch.png');
      expect(linksResource.articleLink, 'http://article.com');
      expect(linksResource.flickrImages, [
        'https://farm9.staticflickr.com/8619/16511407538_9a25c5d8c6_o.jpg',
        'https://farm9.staticflickr.com/8665/16697946612_1284e952b0_o.jpg',
        'https://farm9.staticflickr.com/8570/16698990475_16524a93de_o.jpg',
        'https://farm9.staticflickr.com/8681/16512864259_e849e496b1_o.jpg',
        'https://farm9.staticflickr.com/8637/16079045013_1f0fab9b54_o.jpg',
        'https://farm9.staticflickr.com/8601/16512864369_2bb896c344_o.jpg',
        'https://farm9.staticflickr.com/8646/16697693861_a038331e0a_o.jpg',
        'https://farm9.staticflickr.com/8680/16511407248_093635a243_o.jpg',
        'https://farm9.staticflickr.com/8654/16511594820_451f194d53_o.jpg',
        'https://farm9.staticflickr.com/8603/16673054016_472fb42a20_o.jpg'
      ]);
    });
  });

  group('LaunchResourceX', () {
    test('should return formatted date as "From" with correct value', () {
      final date = DateTime.now().add(const Duration(days: 5));
      final launchDays = date.formatDateWithDays();

      expect(launchDays, isA<From>());
      expect((launchDays as From).formattedDate, '4');
    });

    test('should return formatted date as "Since" with correct value', () {
      final date = DateTime.now().subtract(const Duration(days: 5));
      final launchDays = date.formatDateWithDays();

      expect(launchDays, isA<Since>());
      expect((launchDays as Since).formattedDate, '5');
    });

    test('should return Unknown when date is null', () {
      final DateTime? date = null;
      final launchDays = date.formatDateWithDays();

      expect(launchDays, isA<Unknown>());
    });

    test('should return formatted time correctly', () {
      final date = DateTime(2025, 12, 25, 14, 30);
      final formattedTime = date.formatDate();

      expect(formattedTime, '02:30 PM, Dec 2025');
    });

    test('should return formatted date correctly', () {
      final date = DateTime(2025, 12, 25, 14, 30);
      final formattedTime = date.formatDate(format: 'MMMM dd, yyyy');

      expect(formattedTime, 'December 25, 2025');
    });

    test('should return formatted utc date correctly', () {
      final date = DateTime(2025, 12, 25, 14, 30);
      final formattedTime =
          date.formatDate(format: 'MMMM dd, yyyy - HH:mm UTC');

      expect(formattedTime, 'December 25, 2025 - 14:30 UTC');
    });

    test('should return empty string when date is null in toFormattedTime', () {
      final DateTime? date = null;
      final formattedTime = date.formatDate();

      expect(formattedTime, '');
    });
  });
}
