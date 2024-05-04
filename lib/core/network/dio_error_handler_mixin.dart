import '../utils/failure.dart';
import 'package:dio/dio.dart';

mixin DioErrorHandler {
  IFailure handleError(Object error, StackTrace stackTrace, String Function(dynamic data) errorDataHandler) {
    if(error is! Exception) {
      return const AppFailure(message: 'Неизвестная ошибка');
    }
    if(error is! DioException) {
      return const AppFailure(message:  'Неизвестная ошибка');
    }
    if(error.response?.statusCode == 500) return const ServerFailure();
    if(error.response?.statusCode == 404) return NotFoundFailure(message: error.message ?? errorDataHandler(error.response?.data));
    if(error.response?.statusCode == 400) return BadRequestFailure(message: error.message ?? errorDataHandler(error.response?.data));
    if(error.response?.statusCode == 401) return const UnauthorisedFailure();
    return const AppFailure(message: 'Неизвестная ошибка сервера');
  }
}