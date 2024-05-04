sealed class IFailure implements Exception {
  final String message;
  const IFailure({required this.message});
}

class AppFailure implements IFailure {
  @override
  final String message;

  const AppFailure({required this.message});
}

class NotFoundFailure implements IFailure {
  @override
  final String message;
  final Map<String, dynamic>? params;

  const NotFoundFailure({required this.message, this.params});
}
class BadRequestFailure implements IFailure {
  @override
  final String message;
  final Map<String, dynamic>? params;

  const BadRequestFailure({required this.message, this.params});
}
class ServerFailure implements IFailure {
  const ServerFailure();

  @override
  String get message => 'Сервер не отвечает';

}
class UnauthorisedFailure implements IFailure {
  const UnauthorisedFailure();

  @override
  String get message => 'Срок действия сессии истек';
}