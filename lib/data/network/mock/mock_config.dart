/// Feature toggle that decides whether the app is served by hardcoded mock
/// data or by the live SpaceX retrofit data sources.
///
/// The public SpaceX API (`api.spacexdata.com`) has been disabled, so the app
/// defaults to mock data and reads everything from `MockData`. Override it per
/// build without touching the source once the API is back:
///
/// ```
/// flutter build appbundle --dart-define=USE_MOCK_DATA=false
/// ```
const bool useMockData =
    bool.fromEnvironment('USE_MOCK_DATA', defaultValue: true);
