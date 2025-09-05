import 'dart:convert';

import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkLaunchFullModel', () {
    test('fromJson should parse correctly', () {
      const jsonString = '''
      {
        "flight_number": 1,
        "mission_name": "FalconSat",
        "mission_id": [],
        "upcoming": false,
        "launch_year": "2006",
        "launch_date_unix": 1143239400,
        "launch_date_utc": "2006-03-24T22:30:00.000Z",
        "launch_date_local": "2006-03-25T10:30:00+12:00",
        "is_tentative": false,
        "tentative_max_precision": "hour",
        "tbd": false,
        "launch_window": 0,
        "rocket": {
          "rocket_id": "falcon1",
          "rocket_name": "Falcon 1",
          "rocket_type": "Merlin A"
        },
        "ships": [],
        "telemetry": {
          "flight_club": null
        },
        "launch_site": {
          "site_id": "kwajalein_atoll",
          "site_name": "Kwajalein Atoll",
          "site_name_long": "Kwajalein Atoll Omelek Island"
        },
        "launch_success": false,
        "launch_failure_details": {
          "time": 33,
          "altitude": null,
          "reason": "merlin engine failure"
        },
        "links": {
          "mission_patch": "https://images2.imgbox.com/40/e3/GypSkayF_o.png",
          "mission_patch_small": "https://images2.imgbox.com/3c/0e/T8iJcSN3_o.png",
          "article_link": "https://www.space.com/2196-spacex-inaugural-falcon-1-rocket-lost-launch.html",
          "wikipedia": "https://en.wikipedia.org/wiki/DemoSat",
          "video_link": "https://www.youtube.com/watch?v=0a_00nJ_Y88",
          "youtube_id": "0a_00nJ_Y88",
          "flickr_images": [
            "https://farm9.staticflickr.com/8619/16511407538_9a25c5d8c6_o.jpg",
            "https://farm9.staticflickr.com/8665/16697946612_1284e952b0_o.jpg",
            "https://farm9.staticflickr.com/8570/16698990475_16524a93de_o.jpg",
            "https://farm9.staticflickr.com/8681/16512864259_e849e496b1_o.jpg",
            "https://farm9.staticflickr.com/8637/16079045013_1f0fab9b54_o.jpg",
            "https://farm9.staticflickr.com/8601/16512864369_2bb896c344_o.jpg",
            "https://farm9.staticflickr.com/8646/16697693861_a038331e0a_o.jpg",
            "https://farm9.staticflickr.com/8680/16511407248_093635a243_o.jpg",
            "https://farm9.staticflickr.com/8654/16511594820_451f194d53_o.jpg",
            "https://farm9.staticflickr.com/8603/16673054016_472fb42a20_o.jpg"
          ]
        },
        "details": "Engine failure at 33 seconds and loss of vehicle",
        "static_fire_date_utc": "2006-03-17T00:00:00.000Z",
        "static_fire_date_unix": 1142553600,
        "timeline": {
          "webcast_liftoff": 54
        }
      }
      ''';

      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
      final model = NetworkLaunchFullModel.fromJson(jsonMap);

      expect(model.flightNumber, 1);
      expect(model.missionName, 'FalconSat');
      expect(model.upcoming, isFalse);
      expect(model.launchYear, '2006');
      expect(model.launchDateUnix, 1143239400);
      expect(model.launchDate?.toUtc().toIso8601String(),
          '2006-03-24T22:30:00.000Z');
      expect(model.launchDateLocal, '2006-03-25T10:30:00+12:00');
      expect(model.isTentative, isFalse);
      expect(model.tentativeMaxPrecision, 'hour');
      expect(model.tbd, isFalse);
      expect(model.launchWindow, 0);
      expect(model.rocket?.id, 'falcon1');
      expect(model.rocket?.name, 'Falcon 1');
      expect(model.rocket?.type, 'Merlin A');
      expect(model.ships, isEmpty);
      expect(model.telemetry?.flightClub, isNull);
      expect(model.launchSite?.siteId, 'kwajalein_atoll');
      expect(model.success, isFalse);
      expect(model.launchFailureDetails?.reason, contains('engine failure'));
      expect(model.links?.wikipedia, contains('DemoSat'));
      expect(model.details, contains('loss of vehicle'));
      expect(model.staticFireDateUtc?.toIso8601String(),
          '2006-03-17T00:00:00.000Z');
      expect(model.staticFireDateUnix, 1142553600);
      expect(model.timeline?.webcastLiftoff, 54);
      expect(
        model.links?.flickrImages,
        contains(
            'https://farm9.staticflickr.com/8619/16511407538_9a25c5d8c6_o.jpg'),
      );
      expect(model.links?.flickrImages?.length, 10);
    });

    test('toJson should serialize correctly', () {
      final model = NetworkLaunchFullModel(
        flightNumber: 2,
        missionName: 'Demo',
        missionId: [],
        upcoming: true,
        launchYear: '2007',
        launchDateUnix: 1234567890,
        launchDate: DateTime.utc(2007, 03, 20, 22, 0, 0),
        launchDateLocal: '2007-03-21T10:00:00+12:00',
        isTentative: false,
        tentativeMaxPrecision: 'hour',
        tbd: false,
        launchWindow: 0,
        rocket: const NetworkRocketModel(
          id: 'falcon1',
          name: 'Falcon 1',
          type: 'Merlin B',
        ),
        ships: [],
        telemetry: const NetworkTelemetry(flightClub: null),
        launchSite: const NetworkLaunchSite(
          siteId: 'test_id',
          siteName: 'Test Site',
          siteNameLong: 'Test Site Long',
        ),
        success: true,
        launchFailureDetails: null,
        links: const NetworkLaunchLinksModel(
          missionPatch: 'patch_url',
          missionPatchSmall: 'patch_small',
          articleLink: 'article',
          wikipedia: 'wiki',
          youtubeId: 'yt',
          flickrImages: [
            'https://farm9.staticflickr.com/8619/16511407538_9a25c5d8c6_o.jpg',
          ],
        ),
        details: 'Test flight',
        staticFireDateUtc: DateTime.utc(2007, 03, 10),
        staticFireDateUnix: 1234560000,
        timeline: const NetworkTimeline(webcastLiftoff: 60),
      );

      final json = model.toJson();
      expect(json['mission_name'], 'Demo');
      expect(json['launch_success'], true);
      expect((json['rocket'] as NetworkRocketModel).name, 'Falcon 1');
      expect(
        (json['links'] as NetworkLaunchLinksModel).flickrImages,
        contains(
            'https://farm9.staticflickr.com/8619/16511407538_9a25c5d8c6_o.jpg'),
      );
    });
  });
}
