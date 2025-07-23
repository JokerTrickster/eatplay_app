enum Environment { dev, local }

class EnvironmentConfig {
  static Environment _environment = Environment.dev;

  static void setEnvironment(Environment env) {
    _environment = env;
  }

  static Environment get environment => _environment;

  static String get apiBaseUrl {
    switch (_environment) {
      case Environment.dev:
        return 'https://eatplay-api.jokertrickster.com';
      case Environment.local:
        return 'http://localhost:8080';
    }
  }

  static String get apiUrl {
    return '$apiBaseUrl/api';
  }

  static bool get isDev => _environment == Environment.dev;
  static bool get isLocal => _environment == Environment.local;

  static String get appName {
    switch (_environment) {
      case Environment.dev:
        return 'EatPlay Dev';
      case Environment.local:
        return 'EatPlay Local';
    }
  }
}
