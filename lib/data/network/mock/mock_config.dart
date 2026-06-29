/// Feature toggle that decides whether the app is served by hardcoded mock
/// data or by the live SpaceX retrofit data sources.
///
/// The public SpaceX API (`api.spacexdata.com`) has been disabled, so the app
/// ships with [useMockData] set to `true` and reads everything from
/// `MockData`. Flip this to `false` to restore the live `*NetworkDataSource`
/// implementations if the API is ever brought back.
const bool useMockData = true;
