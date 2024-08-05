import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/fetch_weather.dart';
import 'weather_event.dart';
import 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final FetchWeather fetchWeather;

  WeatherBloc({required this.fetchWeather}) : super(WeatherInitial()) {
    on<FetchWeatherForLocation>((event, emit) async {
      emit(WeatherLoading());
      try {
        final weather = await fetchWeather(event.location);
        emit(WeatherLoaded(weather));
      } catch (e) {
        emit(WeatherError(e.toString()));
      }
    });
  }
}
