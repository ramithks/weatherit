import '../../domain/entities/location.dart';

class LocationModel extends Location {
  LocationModel({
    required String name,
    required double latitude,
    required double longitude,
  }) : super(
          name: name,
          latitude: latitude,
          longitude: longitude,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      name: json['name'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
    };
  }
}
