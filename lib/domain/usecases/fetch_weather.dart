import '../entities/weather.dart';
import '../entities/location.dart';
import '../repositories/weather_repository.dart';

class FetchWeather {
  final WeatherRepository repository;

  FetchWeather(this.repository);

  Future<Weather> call(Location location) async {
    return await repository.getWeather(location);
  }
}
