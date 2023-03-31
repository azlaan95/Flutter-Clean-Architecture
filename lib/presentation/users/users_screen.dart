import 'package:azl_domain/di/usecase_module.dart';
import 'package:azl_domain/di/validator_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:azl_clean_sample/config/app_config.dart';
import 'package:azl_clean_sample/presentation/users/bloc/user_bloc.dart';
import 'package:azl_clean_sample/presentation/users/bloc/users_state.dart';

class UsersScreen extends StatelessWidget with ValidatorModule, UseCaseModule {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) {
        return UsersBloc(getUserUserCase(appConfigType: AppConfig.shared));
      },
      child: const UserPage(),
    );
  }
}

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(builder: (context, userState) {
      if (userState.loading ?? false) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ListView.builder(
        itemCount: userState.successResponse?.users?.length ?? 0,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                userState.successResponse?.users![index].name ?? "Not Loaded"),
          );
        },
      );
    });
  }
}
