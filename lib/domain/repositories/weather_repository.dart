import '../entities/weather.dart';
import '../entities/location.dart';

abstract class WeatherRepository {
  Future<Weather> getWeather(Location location);
  Future<void> cacheWeather(Weather weather);
  Future<Weather?> getLastCachedWeather();
}
