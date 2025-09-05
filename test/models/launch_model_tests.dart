import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/index.dart';
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
        }
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
          'flickr_images': [
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
          ]
        }
      };

      final networkLaunchModel = NetworkLaunchFullModel.fromJson(json);

      final launchResource = networkLaunchModel.toResource();

      expect(launchResource.id, '123');
      expect(launchResource.missionName, 'Test Mission');
      expect(launchResource.launchDays, isA<Since>());
      expect(launchResource.launchTime, '03:35 AM, Jul 2009');
      expect(launchResource.launchSuccess, true);
      expect(launchResource.links?.flickrImages?.length, 10);
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

      final linksResource = networkLinksModel.toResource();

      expect(linksResource.missionPatch, 'patch.png');
      expect(linksResource.missionPatchSmall, 'small_patch.png');
      expect(linksResource.articleLink, 'http://article.com');
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
      final formattedTime = date.toFormattedTime();

      expect(formattedTime, '02:30 PM, Dec 2025');
    });

    test('should return empty string when date is null in toFormattedTime', () {
      final DateTime? date = null;
      final formattedTime = date.toFormattedTime();

      expect(formattedTime, '');
    });
  });
}
