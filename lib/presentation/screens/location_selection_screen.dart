import 'package:flutter/material.dart';
import '../../domain/entities/location.dart';
import '../widgets/location_list_item.dart';

class LocationSelectionScreen extends StatelessWidget {
  final List<Location> predefinedLocations = [
    Location(name: 'New York', latitude: 40.7128, longitude: -74.0060),
    Location(name: 'London', latitude: 51.5074, longitude: -0.1278),
    Location(name: 'Tokyo', latitude: 35.6762, longitude: 139.6503),
    Location(name: 'Sydney', latitude: -33.8688, longitude: 151.2093),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Location')),
      body: ListView.builder(
        itemCount: predefinedLocations.length,
        itemBuilder: (context, index) {
          return LocationListItem(
            location: predefinedLocations[index],
            onTap: () {
              Navigator.of(context).pop(predefinedLocations[index]);
            },
          );
        },
      ),
    );
  }
}
