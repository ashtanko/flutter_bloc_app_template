import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkLaunchModel', () {
    test('fromJson should return a valid model', () {
      final json = {
        '_id': '123',
        'mission_name': 'Test Mission',
        'rocket': {'id': 'rocket123', 'type': 'Falcon 9', 'name': 'Falcon'},
        'launch_success': true,
        'links': {
          'mission_patch': 'patch_url',
          'mission_patch_small': 'patch_small_url',
          'article_link': 'article_url',
          'wikipedia': 'wiki_url',
          'youtube_id': 'youtube123'
        }
      };

      final model = NetworkLaunchModel.fromJson(json);

      expect(model.id, '123');
      expect(model.missionName, 'Test Mission');
      expect(model.rocket?.id, 'rocket123');
      expect(model.rocket?.type, 'Falcon 9');
      expect(model.rocket?.name, 'Falcon');
      expect(model.success, true);
      expect(model.links?.missionPatch, 'patch_url');
      expect(model.links?.missionPatchSmall, 'patch_small_url');
      expect(model.links?.articleLink, 'article_url');
      expect(model.links?.wikipedia, 'wiki_url');
      expect(model.links?.youtubeId, 'youtube123');
    });

    test('toJson should return a valid json', () {
      final model = const NetworkLaunchModel(
        id: '123',
        missionName: 'Test Mission',
        rocket: NetworkRocketModel(
          id: 'rocket123',
          type: 'Falcon 9',
          name: 'Falcon',
        ),
        success: true,
        links: NetworkLaunchLinksModel(
          missionPatch: 'patch_url',
          missionPatchSmall: 'patch_small_url',
          articleLink: 'article_url',
          wikipedia: 'wiki_url',
          youtubeId: 'youtube123',
        ),
      );

      final json = model.toJson();
      final rocketJson = json['rocket'] as NetworkRocketModel;
      final linksJson = json['links'] as NetworkLaunchLinksModel;
      expect(json['_id'], '123');
      expect(json['mission_name'], 'Test Mission');
      expect(rocketJson.id, 'rocket123');
      expect(rocketJson.type, 'Falcon 9');
      expect(rocketJson.name, 'Falcon');
      expect(json['launch_success'], true);
      expect(linksJson.missionPatch, 'patch_url');
      expect(linksJson.missionPatchSmall, 'patch_small_url');
      expect(linksJson.articleLink, 'article_url');
      expect(linksJson.wikipedia, 'wiki_url');
      expect(linksJson.youtubeId, 'youtube123');
    });
  });
}
