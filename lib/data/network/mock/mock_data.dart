import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';

/// Object Mother holding the hardcoded SpaceX fixtures the app falls back to
/// while the live API is disabled (see `mock_config.dart`).
///
/// The data is intentionally small but representative: it covers every status
/// the cores filter exposes, a handful of rockets and launches, and the single
/// roadster the API used to return. The same fixtures back the offline
/// integration tests, so changing the data here may require updating the
/// assertions in `integration_test/`.
abstract final class MockData {
  // ---------------------------------------------------------------------------
  // Cores — first entry is `Merlin1A`; statuses cover every filter chip
  // (active / lost / inactive / unknown) and serials all contain "Merlin".
  // ---------------------------------------------------------------------------
  static const List<NetworkCoreModel> cores = [
    NetworkCoreModel(
      coreSerial: 'Merlin1A',
      status: 'lost',
      originalLaunch: '2006-03-24T22:30:00.000Z',
      originalLaunchUnix: 1143239400,
      missions: [NetworkMission(name: 'FalconSat', flight: 1)],
      reuseCount: 0,
      details: 'Engine failure at T+33s resulted in loss of vehicle.',
    ),
    NetworkCoreModel(
      coreSerial: 'Merlin2A',
      status: 'lost',
      originalLaunch: '2007-03-21T01:10:00.000Z',
      originalLaunchUnix: 1174439400,
      missions: [NetworkMission(name: 'DemoSat', flight: 2)],
      reuseCount: 0,
      details: 'Premature engine shutdown, failed to reach orbit.',
    ),
    NetworkCoreModel(
      coreSerial: 'Merlin1C',
      status: 'lost',
      originalLaunch: '2008-08-03T03:34:00.000Z',
      originalLaunchUnix: 1217734440,
      missions: [NetworkMission(name: 'Trailblazer', flight: 3)],
      reuseCount: 0,
      details: 'Stage collision between first and second stage.',
    ),
    NetworkCoreModel(
      coreSerial: 'Merlin1D',
      status: 'active',
      originalLaunch: '2018-05-11T20:14:00.000Z',
      originalLaunchUnix: 1526069640,
      missions: [
        NetworkMission(name: 'Bangabandhu-1', flight: 1),
        NetworkMission(name: 'Merah Putih', flight: 2),
      ],
      reuseCount: 2,
    ),
    NetworkCoreModel(
      coreSerial: 'Merlin2C',
      status: 'inactive',
      originalLaunch: '2016-07-18T04:45:00.000Z',
      originalLaunchUnix: 1468817100,
      missions: [NetworkMission(name: 'CRS-9', flight: 1)],
      reuseCount: 0,
    ),
    NetworkCoreModel(
      coreSerial: 'Merlin3C',
      status: 'unknown',
      originalLaunch: '2017-02-19T14:39:00.000Z',
      originalLaunchUnix: 1487515140,
      missions: [NetworkMission(name: 'CRS-10', flight: 1)],
      reuseCount: 1,
    ),
  ];

  // ---------------------------------------------------------------------------
  // Rockets — first entry is `Falcon 1` (rocketId `falcon1`, type `rocket`),
  // which the rockets navigation test taps into.
  // ---------------------------------------------------------------------------
  static const List<NetworkRocketModel> rockets = [
    NetworkRocketModel(
      rocketId: 'falcon1',
      id: 1,
      active: false,
      stages: 2,
      boosters: 0,
      costPerLaunch: 6700000,
      successRatePct: 40,
      firstFlight: '2006-03-24',
      country: 'Republic of the Marshall Islands',
      company: 'SpaceX',
      name: 'Falcon 1',
      type: 'rocket',
      description: 'Falcon 1 was an expendable two-stage launch vehicle '
          'and the first privately developed liquid-fuel rocket to reach '
          'orbit.',
      height: NetworkDimension(meters: 22.25, feet: 73),
      diameter: NetworkDimension(meters: 1.68, feet: 5.5),
      mass: NetworkMass(kg: 30146, lb: 66460),
      payloadWeights: [
        NetworkPayloadWeight(
          id: 'leo',
          name: 'Low Earth Orbit',
          kg: 450,
          lb: 992,
        ),
      ],
      engines: NetworkEngines(
        number: 1,
        type: 'merlin',
        version: '1C',
        propellant1: 'liquid oxygen',
        propellant2: 'RP-1 kerosene',
        thrustSeaLevel: NetworkThrust(kN: 420, lbf: 94000),
      ),
    ),
    NetworkRocketModel(
      rocketId: 'falcon9',
      id: 2,
      active: true,
      stages: 2,
      boosters: 0,
      costPerLaunch: 50000000,
      successRatePct: 97,
      firstFlight: '2010-06-04',
      country: 'United States',
      company: 'SpaceX',
      name: 'Falcon 9',
      type: 'rocket',
      description: 'Falcon 9 is a two-stage rocket designed and manufactured '
          'by SpaceX for the reliable and safe transport of satellites and '
          'the Dragon spacecraft into orbit.',
      height: NetworkDimension(meters: 70, feet: 229.6),
      diameter: NetworkDimension(meters: 3.7, feet: 12),
      mass: NetworkMass(kg: 549054, lb: 1207920),
      payloadWeights: [
        NetworkPayloadWeight(
          id: 'leo',
          name: 'Low Earth Orbit',
          kg: 22800,
          lb: 50265,
        ),
      ],
      engines: NetworkEngines(
        number: 9,
        type: 'merlin',
        version: '1D+',
        propellant1: 'liquid oxygen',
        propellant2: 'RP-1 kerosene',
        thrustSeaLevel: NetworkThrust(kN: 845, lbf: 190000),
      ),
    ),
    NetworkRocketModel(
      rocketId: 'falconheavy',
      id: 3,
      active: true,
      stages: 2,
      boosters: 2,
      costPerLaunch: 90000000,
      successRatePct: 100,
      firstFlight: '2018-02-06',
      country: 'United States',
      company: 'SpaceX',
      name: 'Falcon Heavy',
      type: 'rocket',
      description: 'Falcon Heavy is the most powerful operational rocket in '
          'the world by a factor of two, able to lift more than twice the '
          'payload of the next closest vehicle.',
      height: NetworkDimension(meters: 70, feet: 229.6),
      diameter: NetworkDimension(meters: 12.2, feet: 39.9),
      mass: NetworkMass(kg: 1420788, lb: 3125735),
      payloadWeights: [
        NetworkPayloadWeight(
          id: 'leo',
          name: 'Low Earth Orbit',
          kg: 63800,
          lb: 140660,
        ),
      ],
      engines: NetworkEngines(
        number: 27,
        type: 'merlin',
        version: '1D+',
        propellant1: 'liquid oxygen',
        propellant2: 'RP-1 kerosene',
        thrustSeaLevel: NetworkThrust(kN: 22819, lbf: 5130000),
      ),
    ),
  ];

  // ---------------------------------------------------------------------------
  // Launches — first entry is `FalconSat` / flight 1 (key `FalconSat1`), tapped
  // by the launch navigation test. Date fields force `final` (not `const`).
  // ---------------------------------------------------------------------------
  static final List<NetworkLaunchModel> launches = [
    NetworkLaunchModel(
      id: '1',
      flightNumber: 1,
      missionName: 'FalconSat',
      launchDate: DateTime.utc(2006, 3, 24, 22, 30),
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin A',
      ),
    ),
    NetworkLaunchModel(
      id: '2',
      flightNumber: 2,
      missionName: 'DemoSat',
      launchDate: DateTime.utc(2007, 3, 21, 1, 10),
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin A',
      ),
    ),
    NetworkLaunchModel(
      id: '3',
      flightNumber: 3,
      missionName: 'Trailblazer',
      launchDate: DateTime.utc(2008, 8, 3, 3, 34),
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin C',
      ),
    ),
    NetworkLaunchModel(
      id: '4',
      flightNumber: 4,
      missionName: 'RatSat',
      launchDate: DateTime.utc(2008, 9, 28, 23, 15),
      success: true,
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin C',
      ),
    ),
    NetworkLaunchModel(
      id: '5',
      flightNumber: 5,
      missionName: 'RazakSat',
      launchDate: DateTime.utc(2009, 7, 14, 3, 35),
      success: true,
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin C',
      ),
    ),
  ];

  // ---------------------------------------------------------------------------
  // Full launches — returned by `getLaunch(flightNumber)` on the detail screen.
  // ---------------------------------------------------------------------------
  static final List<NetworkLaunchFullModel> launchesFull = [
    NetworkLaunchFullModel(
      id: '1',
      flightNumber: 1,
      missionName: 'FalconSat',
      launchYear: '2006',
      launchDate: DateTime.utc(2006, 3, 24, 22, 30),
      staticFireDate: DateTime.utc(2006, 3, 17),
      success: false,
      details: 'Engine failure at 33 seconds and loss of vehicle.',
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin A',
      ),
      launchSite: const NetworkLaunchSite(
        siteId: 'kwajalein_atoll',
        siteName: 'Kwajalein Atoll',
        siteNameLong: 'Kwajalein Atoll Omelek Island',
      ),
      ships: const [],
    ),
    NetworkLaunchFullModel(
      id: '2',
      flightNumber: 2,
      missionName: 'DemoSat',
      launchYear: '2007',
      launchDate: DateTime.utc(2007, 3, 21, 1, 10),
      success: false,
      details: 'Maximum altitude 289 km, failed to reach orbit.',
      rocket: const NetworkLaunchRocketModel(
        id: 'falcon1',
        name: 'Falcon 1',
        type: 'Merlin A',
      ),
      launchSite: const NetworkLaunchSite(
        siteId: 'kwajalein_atoll',
        siteName: 'Kwajalein Atoll',
        siteNameLong: 'Kwajalein Atoll Omelek Island',
      ),
      ships: const [],
    ),
  ];

  // ---------------------------------------------------------------------------
  // Roadster — single object the API used to expose.
  // ---------------------------------------------------------------------------
  static const NetworkRoadsterModel roadster = NetworkRoadsterModel(
    id: 'roadster',
    name: 'Elon Musk\'s Tesla Roadster',
    launchDateUtc: '2018-02-06T20:45:00.000Z',
    launchDateUnix: 1517949900,
    launchMassKg: 1350,
    launchMassLbs: 2976,
    noradId: 43205,
    orbitType: 'heliocentric',
    apoapsisAu: 1.663953958296996,
    periapsisAu: 0.9858147198091061,
    semiMajorAxisAu: 1.324884339053051,
    eccentricity: 0.2559239394673542,
    inclination: 1.077447168391769,
    speedKph: 81565.80012,
    speedMph: 50682.8911,
    earthDistanceKm: 75679341.4,
    earthDistanceMi: 47024687.31,
    marsDistanceKm: 295864043.5,
    marsDistanceMi: 183841509.8,
    wikipedia: 'https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster',
    details: 'Elon Musk\'s personal Tesla Roadster launched as a dummy '
        'payload on the maiden Falcon Heavy flight.',
  );
}
