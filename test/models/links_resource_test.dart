import 'package:flutter_bloc_app_template/models/launch/links_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('constructor assigns values correctly', () {
    const links = LinksResource(
      missionPatch: 'patch.png',
      missionPatchSmall: 'patch_small.png',
      articleLink: 'https://example.com/article',
      wikipedia: 'https://wikipedia.org',
      youtubeId: 'abcd1234',
      flickrImages: ['img1.png', 'img2.png'],
    );

    expect(links.missionPatch, 'patch.png');
    expect(links.missionPatchSmall, 'patch_small.png');
    expect(links.articleLink, 'https://example.com/article');
    expect(links.wikipedia, 'https://wikipedia.org');
    expect(links.youtubeId, 'abcd1234');
    expect(links.flickrImages, ['img1.png', 'img2.png']);
  });

  test('two LinksResource with same values are equal', () {
    const links1 = LinksResource(
      missionPatch: 'patch.png',
      missionPatchSmall: 'patch_small.png',
      articleLink: 'https://example.com/article',
      wikipedia: 'https://wikipedia.org',
      youtubeId: 'abcd1234',
      flickrImages: ['img1.png', 'img2.png'],
    );

    const links2 = LinksResource(
      missionPatch: 'patch.png',
      missionPatchSmall: 'patch_small.png',
      articleLink: 'https://example.com/article',
      wikipedia: 'https://wikipedia.org',
      youtubeId: 'abcd1234',
      flickrImages: ['img1.png', 'img2.png'],
    );

    expect(links1, equals(links2));
  });

  test('LinksResource handles null fields', () {
    const links = LinksResource();

    expect(links.missionPatch, isNull);
    expect(links.missionPatchSmall, isNull);
    expect(links.articleLink, isNull);
    expect(links.wikipedia, isNull);
    expect(links.youtubeId, isNull);
    expect(links.flickrImages, isNull);
  });
}
