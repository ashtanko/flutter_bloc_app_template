/// Application configuration.
class AppConfig {
  AppConfig({
    required this.url,
  });

  /// Base url.
  final String url;

  AppConfig copyWith({
    String? url,
    String? proxyUrl,
  }) =>
      AppConfig(
        url: url ?? this.url,
      );
}
