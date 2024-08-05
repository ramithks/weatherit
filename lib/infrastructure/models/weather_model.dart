import '../../domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel({
    required double temperature,
    required double humidity,
    required double windSpeed,
  }) : super(
          temperature: temperature,
          humidity: humidity,
          windSpeed: windSpeed,
        );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      temperature: json['main']['temp'].toDouble(),
      humidity: json['main']['humidity'].toDouble(),
      windSpeed: json['wind']['speed'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'main': {
        'temp': temperature,
        'humidity': humidity,
      },
      'wind': {
        'speed': windSpeed,
      },
    };
  }
}
