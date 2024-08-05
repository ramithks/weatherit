import 'package:geolocator/geolocator.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  @override
  Future<Location> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final position = await Geolocator.getCurrentPosition();
    return Location(
      name: 'Current Location',
      latitude: position.latitude,
      longitude: position.longitude,
    );
  }

  @override
  Future<List<Location>> getPredefinedLocations() async {
    // This could be fetched from a local database or a remote API
    return [
      Location(name: 'New York', latitude: 40.7128, longitude: -74.0060),
      Location(name: 'London', latitude: 51.5074, longitude: -0.1278),
      Location(name: 'Tokyo', latitude: 35.6762, longitude: 139.6503),
      Location(name: 'Sydney', latitude: -33.8688, longitude: 151.2093),
    ];
  }
}
