/// Application configuration.
///
/// One instance is created per flavor entrypoint (`main_dev`, `main_qa`,
/// `main_prod`) and handed to `Environment` before the app boots, so every
/// build-specific value lives in exactly one place.
class AppConfig {
  const AppConfig({
    required this.url,
    required this.urlVersion4,
  });

  /// Base url of the v3 API.
  final String url;

  /// Base url of the v4 API.
  final String urlVersion4;

  AppConfig copyWith({
    String? url,
    String? urlVersion4,
  }) =>
      AppConfig(
        url: url ?? this.url,
        urlVersion4: urlVersion4 ?? this.urlVersion4,
      );
}
