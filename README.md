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
- Splash screen
- Auth screens for signup and sign-in
- Home screen with weather info display and sign-out button
- Separate screen for selecting or entering a new location

## Project Structure

The project follows a Domain-Driven Design architecture:

```
weatherit/
├── lib/
│   ├── domain/
│   │   ├── entities/
│   │   │   ├── weather.dart
│   │   │   ├── user.dart
│   │   │   └── location.dart
│   │   └── repositories/
│   │       ├── weather_repository.dart
│   │       ├── auth_repository.dart
│   │       └── location_repository.dart
│   ├── application/
│   │   └── usecases/
│   │       ├── get_weather.dart
│   │       ├── sign_in.dart
│   │       ├── sign_up.dart
│   │       ├── sign_out.dart
│   │       ├── get_current_location.dart
│   │       └── select_location.dart
│   ├── infrastructure/
│   │   ├── data_sources/
│   │   │   ├── weather_api_service.dart
│   │   │   ├── firebase_auth_service.dart
│   │   │   └── local_storage_service.dart
│   │   ├── models/
│   │   │   ├── weather_model.dart
│   │   │   ├── user_model.dart
│   │   │   └── location_model.dart
│   │   └── repositories_impl/
│   │       ├── weather_repository_impl.dart
│   │       ├── auth_repository_impl.dart
│   │       └── location_repository_impl.dart
│   ├── presentation/
│   │   ├── bloc/
│   │   │   ├── auth_bloc.dart
│   │   │   ├── weather_bloc.dart
│   │   │   └── location_bloc.dart
│   │   ├── pages/
│   │   │   ├── splash_page.dart
│   │   │   ├── auth/
│   │   │   │   ├── sign_in_page.dart
│   │   │   │   └── sign_up_page.dart
│   │   │   ├── home_page.dart
│   │   │   └── location_selection_page.dart
│   │   └── widgets/
│   │       ├── weather_info_widget.dart
│   │       └── error_widget.dart
│   ├── core/
│   │   ├── error/
│   │   │   └── exceptions.dart
│   │   └── util/
│   │       └── input_converter.dart
│   ├── injection_container.dart
│   └── main.dart
├── test/
│   ├── domain/
│   ├── application/
│   ├── infrastructure/
│   └── presentation/
├── pubspec.yaml
└── README.md
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Firebase account for authentication
- Weather API account (e.g., OpenWeatherMap)

### Installing

1. Clone the repository:

   ```
   git clone https://github.com/your-repo/weatherit.git
   cd weatherit
   ```

2. Install dependencies:

   ```
   flutter pub get
   ```

3. Configure Firebase:

   - Follow the official [Firebase setup guide](https://firebase.google.com/docs/flutter/setup) to configure your Firebase project.

4. Set up Weather API:

   - Sign up for a weather API service and obtain an API key.
   - Update the `weather_api_service.dart` file with your API key.

5. Initialize Hive for local storage:
   - In your `main.dart` file, add:
     ```dart
     await Hive.initFlutter();
     await Hive.openBox('authBox');
     await Hive.openBox('weatherBox');
     ```

## Dependencies

- flutter_bloc: ^8.1.3
- dio: ^5.3.2
- get_it: ^7.6.0
- auto_route: ^7.8.0
- hive: ^2.2.3
- hive_flutter: ^1.1.0
- firebase_auth: ^4.7.3
- firebase_core: ^2.15.1
- geolocator: ^10.0.0
- equatable: ^2.0.5

## Documentation and Code Quality

This project emphasizes:

- Clear comments and documentation for code readability
- Adherence to best practices and consistent code formatting
- Proper error handling and code separation for improved maintainability

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests for any enhancements or bug fixes.

## License

This project is licensed under the MIT License.
