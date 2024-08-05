import '../../domain/entities/weather.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/weather_repository.dart';
import '../data_sources/weather_api.dart';
import '../data_sources/local_storage.dart';
import '../models/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi weatherApi;
  final LocalStorage localStorage;

  WeatherRepositoryImpl(this.weatherApi, this.localStorage);

  @override
  Future<Weather> getWeather(Location location) async {
    try {
      final weatherModel =
          await weatherApi.getWeather(location.latitude, location.longitude);
      await cacheWeather(weatherModel);
      return weatherModel;
    } catch (e) {
      final cachedWeather = await getLastCachedWeather();
      if (cachedWeather != null) {
        return cachedWeather;
      }
      rethrow;
    }
  }

  @override
  Future<void> cacheWeather(Weather weather) async {
    await localStorage.cacheWeather(weather as WeatherModel);
  }

  @override
  Future<Weather?> getLastCachedWeather() async {
    return await localStorage.getLastCachedWeather();
  }
}
