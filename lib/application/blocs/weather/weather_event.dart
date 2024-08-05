import '../../../domain/entities/location.dart';

abstract class WeatherEvent {}

class FetchWeatherForLocation extends WeatherEvent {
  final Location location;

  FetchWeatherForLocation(this.location);
}