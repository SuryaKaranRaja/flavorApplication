enum Flavor { dev, qa, prod }

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final String baseUrl;

  static late FlavorConfig _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String name,
    required String baseUrl,
  }) {
    _instance = FlavorConfig._internal(flavor, name, baseUrl);
    return _instance;
  }

  FlavorConfig._internal(this.flavor, this.name, this.baseUrl);

  static FlavorConfig get instance => _instance;

  static bool get isDev => _instance.flavor == Flavor.dev;
  static bool get isQA => _instance.flavor == Flavor.qa;
  static bool get isProd => _instance.flavor == Flavor.prod;
}
