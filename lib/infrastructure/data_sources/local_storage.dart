import 'package:hive/hive.dart';
import '../models/weather_model.dart';

class LocalStorage {
  static const String weatherBoxName = 'weatherBox';
  static const String lastWeatherKey = 'lastWeather';

  Future<void> cacheWeather(WeatherModel weather) async {
    final box = await Hive.openBox(weatherBoxName);
    await box.put(lastWeatherKey, weather.toJson());
  }

  Future<WeatherModel?> getLastCachedWeather() async {
    final box = await Hive.openBox(weatherBoxName);
    final weatherJson = box.get(lastWeatherKey);
    if (weatherJson != null) {
      return WeatherModel.fromJson(weatherJson);
    }
    return null;
  }
}
