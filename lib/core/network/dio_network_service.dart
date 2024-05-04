import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:stocktacking/core/network/dio_error_handler_mixin.dart';
import 'package:stocktacking/core/network/network_service.dart';
import 'package:stocktacking/core/utils/failure.dart';

class DioNetworkService with DioErrorHandler implements NetworkService{

  final String networkServiceIdentifier;
  final Dio _dioClient;

  DioNetworkService({required this.networkServiceIdentifier}): _dioClient = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20)
  ))..interceptors.add(LogInterceptor());

  @override
  Map<String, dynamic>? get headers => _dioClient.options.headers;

  @override
  void updateHeaders(Map<String, dynamic> headers) {
    _dioClient.options.headers = headers;
  }

  @override
  Future<Either<IFailure, TResponse>> mutation<TResponse>({
    required Uri url,
    required EMutationType requestType,
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Map<String, String>? headers
  }) async {
    return await TaskEither
        .tryCatch(
            () => _dioClient.request(
                url.path,
                queryParameters: queryParameters,
                options: Options(
                    headers: headers ?? _dioClient.options.headers,
                    method: requestType.methodName
                )
            ),
            (error, stackTrace) => handleError(error, stackTrace, (data) => '')
    )
        .map((r) => r.data as TResponse)
        .run();
  }

  @override
  Future<Either<IFailure, TResponse>> query<TResponse>({
    required Uri url,
    Map<String, String>? pathParameters,
    Map<String, String>? queryParameters,
    Map<String, String>? headers
  }) async {
    return await TaskEither
        .tryCatch(
            () => _dioClient.get(url.path, queryParameters: queryParameters),
            (error, stackTrace) => handleError(error, stackTrace, (data) => '')
    )
        .map((r) => r.data as TResponse)
        .run();
  }
}