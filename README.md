![logo](https://github.com/user-attachments/assets/832b3fa4-f4aa-418d-bb38-ea7ffa4b3a05)

This project is a weather application built using Flutter. It follows the principles of Domain-Driven Design (DDD) and uses the BLoC architecture for managing business logic. The app includes features like Firebase Authentication, local storage of authentication states, and weather data fetching from a weather API.

## Features

- Firebase Authentication with email.
- Local storage of authentication states.
- Fetching weather data from a weather API.
- Getting the current location of the device.
- Displaying weather information for the current location.
- Error handling for network requests and data retrieval failures.
- Local storage of the last fetched weather info, displayed in case of network errors.
- Ability to enter a location or select from a predefined list to view the weather.
- Responsive UI/UX with various screens including splash, auth, home, and location selection screens.

## Folder Structure

```
weatherit/
├── lib/
│   ├── src/
│   │   ├── presentation/
│   │   │   ├── bloc/
│   │   │   │   ├── auth_bloc.dart
│   │   │   │   ├── weather_bloc.dart
│   │   │   │   └── location_bloc.dart
│   │   │   ├── pages/
│   │   │   │   ├── splash_page.dart
│   │   │   │   ├── auth/
│   │   │   │   │   ├── sign_in_page.dart
│   │   │   │   │   ├── sign_up_page.dart
│   │   │   │   ├── home_page.dart
│   │   │   │   ├── location_selection_page.dart
│   │   │   ├── widgets/
│   │   │   │   ├── weather_info_widget.dart
│   │   │   │   ├── error_widget.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   ├── weather.dart
│   │   │   │   ├── user.dart
│   │   │   │   ├── location.dart
│   │   │   ├── repositories/
│   │   │   │   ├── weather_repository.dart
│   │   │   │   ├── auth_repository.dart
│   │   │   │   ├── location_repository.dart
│   │   ├── application/
│   │   │   ├── usecases/
│   │   │   │   ├── get_weather.dart
│   │   │   │   ├── sign_in.dart
│   │   │   │   ├── sign_out.dart
│   │   │   │   ├── sign_up.dart
│   │   │   │   ├── get_current_location.dart
│   │   │   │   ├── select_location.dart
│   │   ├── infrastructure/
│   │   │   ├── data_sources/
│   │   │   │   ├── weather_api_service.dart
│   │   │   │   ├── firebase_auth_service.dart
│   │   │   │   ├── local_storage_service.dart
│   │   │   ├── models/
│   │   │   │   ├── weather_model.dart
│   │   │   │   ├── user_model.dart
│   │   │   │   ├── location_model.dart
│   │   │   ├── repositories_impl/
│   │   │   │   ├── weather_repository_impl.dart
│   │   │   │   ├── auth_repository_impl.dart
│   │   │   │   ├── location_repository_impl.dart
│   ├── main.dart
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Firebase account for authentication
- Weather API account (e.g., OpenWeatherMap)

### Installing

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-repo/weather_app.git
   cd weather_app
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Configure Firebase:**

   - Follow the official [Firebase setup guide](https://firebase.google.com/docs/flutter/setup) to configure your Firebase project for the app.

4. **Set up Weather API:**

   - Sign up for a weather API servi

## Features

- Firebase Authentication with email.
- Local storage of authentication states.
- Fetching weather data from a weather API.
- Getting the current location of the device.
- Displaying weather information for the current location.
- Error handling for network requests and data retrieval failures.
- Local storage of the last fetched weather info, displayed in case of network errors.
- Ability to enter a location or select from a predefined list to view the weather.
- Responsive UI/UX with various screens including splash, auth, home, and location selection screens.

## Folder Structure

```
weatherit/
├── lib/
│   ├── src/
│   │   ├── presentation/
│   │   │   ├── bloc/
│   │   │   │   ├── auth_bloc.dart
│   │   │   │   ├── weather_bloc.dart
│   │   │   │   └── location_bloc.dart
│   │   │   ├── pages/
│   │   │   │   ├── splash_page.dart
│   │   │   │   ├── auth/
│   │   │   │   │   ├── sign_in_page.dart
│   │   │   │   │   ├── sign_up_page.dart
│   │   │   │   ├── home_page.dart
│   │   │   │   ├── location_selection_page.dart
│   │   │   ├── widgets/
│   │   │   │   ├── weather_info_widget.dart
│   │   │   │   ├── error_widget.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   ├── weather.dart
│   │   │   │   ├── user.dart
│   │   │   │   ├── location.dart
│   │   │   ├── repositories/
│   │   │   │   ├── weather_repository.dart
│   │   │   │   ├── auth_repository.dart
│   │   │   │   ├── location_repository.dart
│   │   ├── application/
│   │   │   ├── usecases/
│   │   │   │   ├── get_weather.dart
│   │   │   │   ├── sign_in.dart
│   │   │   │   ├── sign_out.dart
│   │   │   │   ├── sign_up.dart
│   │   │   │   ├── get_current_location.dart
│   │   │   │   ├── select_location.dart
│   │   ├── infrastructure/
│   │   │   ├── data_sources/
│   │   │   │   ├── weather_api_service.dart
│   │   │   │   ├── firebase_auth_service.dart
│   │   │   │   ├── local_storage_service.dart
│   │   │   ├── models/
│   │   │   │   ├── weather_model.dart
│   │   │   │   ├── user_model.dart
│   │   │   │   ├── location_model.dart
│   │   │   ├── repositories_impl/
│   │   │   │   ├── weather_repository_impl.dart
│   │   │   │   ├── auth_repository_impl.dart
│   │   │   │   ├── location_repository_impl.dart
│   ├── main.dart
```

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Firebase account for authentication
- Weather API account (e.g., OpenWeatherMap)

### Installing

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-repo/weather_app.git
   cd weather_app
   ```

2. **Install dependencies:**

   ```bash
   flutter pub get
   ```

3. **Configure Firebase:**

   - Follow the official [Firebase setup guide](https://firebase.google.com/docs/flutter/setup) to configure your Firebase project for the app.

4. **Set up Weather API:**

   - Sign up for a weather API service (e.g., OpenWeatherMap) and get your API key.
   - Update the `weather_api_service.dart` file with your API key.

5. **Initialize Hive for local storage:**
   - In your `main.dart` file, add the following before `runApp()`:
     ```dart
     await Hive.initFlutter();
     ```

## Dependencies

- flutter_bloc: ^7.3.0
- dio: ^4.0.0
- get_it: ^7.2.0
- auto_route: ^3.0.0
- hive_flutter: ^1.1.0
- firebase_auth: ^3.1.0
- firebase_core: ^1.7.0
- geolocator: ^7.6.2
- location: ^4.3.0ce (e.g., OpenWeatherMap) and get your API key.
  - Update the `weather_api_service.dart` file with your API key.

5. **Initialize Hive for local storage:**
   - In your `main.dart` file, add the following before `runApp()`:
     ```dart
     await Hive.initFlutter();
     ```

## Dependencies

- flutter_bloc: ^7.3.0
- dio: ^4.0.0
- get_it: ^7.2.0
- auto_route: ^3.0.0
- hive_flutter: ^1.1.0
- firebase_auth: ^3.1.0
- firebase_core: ^1.7.0
- geolocator: ^7.6.2
- location: ^4.3.0

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests for any enhancements or bug fixes.

## License

This project is licensed under the MIT License.
