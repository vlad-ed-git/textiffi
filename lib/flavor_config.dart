class FlavorConfig {
  final String appTitle;
  final String apiEndpoint;
  final String packageName;
  final bool isDevelopment;
  static FlavorConfig? _instance;

  factory FlavorConfig({
    required String appTitle,
    required String apiEndpoint,
    required String packageName,
    required bool isDevelopment,
  }) {
    _instance ??= FlavorConfig._internal(
      appTitle,
      apiEndpoint,
      packageName,
      isDevelopment,
    );
    return _instance!;
  }

  FlavorConfig._internal(
      this.appTitle,
      this.apiEndpoint,
      this.packageName,
      this.isDevelopment,
      );

  static FlavorConfig get instance => _instance!;
}
