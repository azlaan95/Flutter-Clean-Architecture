import 'package:azl_domain/model/users/users_response.dart';
import 'package:equatable/equatable.dart';

class UsersState extends Equatable {
  const UsersState({this.message, this.successResponse, this.loading});

  final String? message;
  final UsersResponse? successResponse;
  final bool? loading;

  @override
  List<Object?> get props => [message, successResponse, loading];

  UsersState copyWith(
      {String? message, UsersResponse? successResponse, bool? loading}) {
    return UsersState(
        message: message ?? this.message,
        successResponse: successResponse ?? this.successResponse,
        loading: loading ?? this.loading);
  }
}
