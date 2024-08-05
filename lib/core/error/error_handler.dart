import 'package:dio/dio.dart';
import 'failures.dart';

Failure handleError(dynamic error) {
  if (error is DioException) {
    return ServerFailure();
  } else if (error is TypeError) {
    return DataParsingFailure();
  } else {
    return UnknownFailure();
  }
}
