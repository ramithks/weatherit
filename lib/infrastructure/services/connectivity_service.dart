import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService {
  final InternetConnectionChecker connectionChecker;

  ConnectivityService(this.connectionChecker);

  Future<bool> get isConnected => connectionChecker.hasConnection;
}
