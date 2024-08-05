import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherit/domain/entities/location.dart';

import '../../application/blocs/auth/auth_bloc.dart';
import '../../application/blocs/auth/auth_event.dart';
import '../../application/blocs/weather/weather_bloc.dart';
import '../../application/blocs/weather/weather_event.dart';
import '../../application/blocs/weather/weather_state.dart';
import '../widgets/weather_info_widget.dart';
import 'location_selection_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(SignOutRequested());
            },
          ),
        ],
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitial) {
            BlocProvider.of<WeatherBloc>(context).add(FetchWeatherForLocation(
              Location(
                  name: 'New York', latitude: 40.7128, longitude: -74.0060),
            ));
            return Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoaded) {
            return WeatherInfoWidget(weather: state.weather);
          } else if (state is WeatherError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final selectedLocation = await Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => LocationSelectionScreen()),
          );
          if (selectedLocation != null) {
            BlocProvider.of<WeatherBloc>(context)
                .add(FetchWeatherForLocation(selectedLocation));
          }
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}
