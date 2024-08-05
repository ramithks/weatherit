import 'package:flutter/material.dart';
import '../../domain/entities/location.dart';

class LocationListItem extends StatelessWidget {
  final Location location;
  final VoidCallback onTap;

  const LocationListItem({
    Key? key,
    required this.location,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(location.name),
      subtitle: Text('Lat: ${location.latitude}, Lon: ${location.longitude}'),
      onTap: onTap,
    );
  }
}
