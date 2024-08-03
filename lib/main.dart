import 'package:flutter/material.dart';

void main() {
  runApp(const WeatheritApp());
}

class WeatheritApp extends StatelessWidget {
  const WeatheritApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weatherit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weatherit'),
        ),
        body: const Center(
          child: Text('Hello, Weatherit!'),
        ),
      ),
    );
  }
}
