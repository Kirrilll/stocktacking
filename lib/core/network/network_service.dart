import 'package:fpdart/fpdart.dart';
import 'package:stocktacking/core/utils/failure.dart';

enum EMutationType {
  post,
  put,
  patch
}

extension AsHttpMethodName on EMutationType {
  String get methodName => switch(this) {
    EMutationType.post => 'POST',
    EMutationType.patch => 'PATCH',
    EMutationType.put => 'PUT'
  };
}

abstract class NetworkService {

  Map<String, dynamic>? get headers;

  void updateHeaders(Map<String, dynamic> headers);

  Future<Either<IFailure, TResponse>> query<TResponse>({
      required Uri url,
      Map<String, String>? pathParameters,
      Map<String, String>? queryParameters,
      Map<String, String>? headers
  });

  Future<Either<IFailure, TResponse>> mutation<TResponse>({
    required Uri url,
    required EMutationType requestType,
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Map<String, String>? headers
  });
}