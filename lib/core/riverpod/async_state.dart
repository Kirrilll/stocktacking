import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_state.freezed.dart';

@freezed
sealed class AsyncState<T> {
  factory AsyncState.initial() = Initial;
  factory AsyncState.loading() = Loading;
  factory AsyncState.successful(T v) = Successful;
  factory AsyncState.error([String? message]) = Error;
}


