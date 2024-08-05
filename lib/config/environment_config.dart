class EnvironmentConfig {
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'https://api.openweathermap.org/data/2.5',
  );

  static const String apiKey = String.fromEnvironment(
    'API_KEY',
    defaultValue: 'YOUR_API_KEY_HERE',
  );
}
