import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('NetworkRoadsterModel.toResource maps correctly', () {
    final model = const NetworkRoadsterModel(
      name: "Elon Musk's Tesla Roadster",
      launchDateUtc: '2018-02-06T20:45:00.000Z',
      launchMassKg: 1350,
      flickrImages: ['url1', 'url2'],
      id: '123',
    );

    final resource = model.toResource();

    expect(resource.name, model.name);
    expect(resource.launchDateUtc, model.launchDateUtc);
    expect(resource.launchMassKg, model.launchMassKg);
    expect(resource.flickrImages, model.flickrImages);
    expect(resource.id, model.id);
  });
}
