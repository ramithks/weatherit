# WeatherIt

![logo](https://github.com/user-attachments/assets/832b3fa4-f4aa-418d-bb38-ea7ffa4b3a05)

This project is a weather application built using Flutter, following the principles of Domain-Driven Design (DDD) and using the BLoC architecture for managing business logic.

## Features

- Firebase Authentication with email
- Local storage of authentication states
- Fetching weather data from a weather API
- Getting the current location of the device
- Displaying weather information for the current location
- Error handling for network requests and data retrieval failures
- Local storage of the last fetched weather info, displayed in case of network errors
- Ability to enter a location or select from a predefined list to view the weather

## Project Structure

The project follows a simplified Domain-Driven Design architecture:

```
weatherit/
├── lib/
│   ├── core/
│   │   ├── error/
│   │   │   ├── error_handler.dart
│   │   │   └── failures.dart
│   │   ├── network/
│   │   │   └── network_info.dart
│   │   └── utils/
│   │       └── constants.dart
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── weather.dart
│   │   │   ├── location.dart
│   │   │   └── user.dart
│   │   ├── repositories/
│   │   │   ├── weather_repository.dart
│   │   │   ├── auth_repository.dart
│   │   │   └── location_repository.dart
│   │   └── usecases/
│   │       ├── fetch_weather.dart
│   │       ├── get_current_location.dart
│   │       ├── sign_in.dart
│   │       ├── sign_up.dart
│   │       └── sign_out.dart
│   ├── application/
│   │   ├── blocs/
│   │   │   ├── auth/
│   │   │   │   ├── auth_bloc.dart
│   │   │   │   ├── auth_event.dart
│   │   │   │   └── auth_state.dart
│   │   │   ├── weather/
│   │   │   │   ├── weather_bloc.dart
│   │   │   │   ├── weather_event.dart
│   │   │   │   └── weather_state.dart
│   │   │   └── location/
│   │   │       ├── location_bloc.dart
│   │   │       ├── location_event.dart
│   │   │       └── location_state.dart
│   ├── infrastructure/
│   │   ├── data_sources/
│   │   │   ├── weather_api.dart
│   │   │   ├── local_storage.dart
│   │   │   └── firebase_auth_source.dart
│   │   ├── repositories/
│   │   │   ├── weather_repository_impl.dart
│   │   │   ├── auth_repository_impl.dart
│   │   │   └── location_repository_impl.dart
│   │   ├── services/
│   │   │   ├── location_service.dart
│   │   │   └── connectivity_service.dart
│   │   └── models/
│   │       ├── weather_model.dart
│   │       └── location_model.dart
│   ├── presentation/
│   │   ├── screens/
│   │   │   ├── splash_screen.dart
│   │   │   ├── auth/
│   │   │   │   ├── sign_in_screen.dart
│   │   │   │   └── sign_up_screen.dart
│   │   │   ├── home_screen.dart
│   │   │   └── location_selection_screen.dart
│   │   ├── widgets/
│   │   │   ├── weather_info_widget.dart
│   │   │   └── location_list_item.dart
│   │   └── routes.dart
│   ├── config/
│   │   ├── dependency_injection.dart
│   │   └── environment_config.dart
│   └── main.dart
├── test/
│   ├── domain/
│   │   └── usecases/
│   │       ├── fetch_weather_test.dart
│   │       └── sign_in_test.dart
│   ├── application/
│   │   └── blocs/
│   │       ├── auth_bloc_test.dart
│   │       └── weather_bloc_test.dart
│   └── infrastructure/
│       └── repositories/
│           ├── weather_repository_impl_test.dart
│           └── auth_repository_impl_test.dart
├── pubspec.yaml
├── README.md
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Firebase account for authentication
- Weather API account (e.g., OpenWeatherMap)

### Installing

1. Clone the repository:

```bash
git clone https://github.com/your-repo/weatherit.git
cd weatherit
```

2. Install dependencies:

```bash
flutter pub get
```

3. Configure Firebase and set up your Weather API key.

4. Run the app:

```bash
flutter run
```

## Dependencies

- flutter_bloc: for BLoC implementation
- dio: for HTTP requests
- get_it: for dependency injection
- auto_route: for navigation
- hive: for local database
- firebase_auth: for authentication
- geolocator: for getting device location

## Documentation and Code Quality

This project emphasizes:

- Clear comments and documentation for code readability
- Adherence to best practices and consistent code formatting
- Proper error handling and code separation for improved maintainability

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests for any enhancements or bug fixes.

## License

This project is licensed under the MIT License.
