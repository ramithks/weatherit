import '../entities/location.dart';

abstract class LocationRepository {
  Future<Location> getCurrentLocation();
  Future<List<Location>> getPredefinedLocations();
}
