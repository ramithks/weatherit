import 'package:flutter/material.dart';
import '../../domain/entities/weather.dart';

class WeatherInfoWidget extends StatelessWidget {
  final Weather weather;

  const WeatherInfoWidget({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Temperature: ${weather.temperature}°C'),
          Text('Humidity: ${weather.humidity}%'),
          Text('Wind Speed: ${weather.windSpeed} m/s'),
        ],
      ),
    );
  }
}
