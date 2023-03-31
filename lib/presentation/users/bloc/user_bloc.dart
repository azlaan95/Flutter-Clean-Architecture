import 'package:azl_domain/usecase/users/users_usecase_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:azl_clean_sample/presentation/users/bloc/users_state.dart';

class UsersBloc extends Cubit<UsersState> {
  UsersBloc(this.useCaseType) : super(const UsersState(loading: true)) {
    getUsers();
  }

  final UsersUseCaseType useCaseType;

  getUsers() async {
    final result = await useCaseType.getUsers();
    result.fold((error) {
      emit(state.copyWith(loading: false, message: error.message));
    }, (success) {
      emit(state.copyWith(loading: false, successResponse: success));
    });
  }
}
