import 'package:dio/dio.dart';
import '../../core/utils/constants.dart';
import '../models/weather_model.dart';

class WeatherApi {
  final Dio dio;

  WeatherApi(this.dio);

  Future<WeatherModel> getWeather(double lat, double lon) async {
    final response = await dio.get(
      '$API_BASE_URL/weather',
      queryParameters: {
        'lat': lat,
        'lon': lon,
        'appid': API_KEY,
        'units': 'metric',
      },
    );

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
