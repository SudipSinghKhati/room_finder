import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:room_finder_app/core/common/snackbar/snackbar.dart';
import 'package:room_finder_app/fetures/auth/domain/entity/consumer_entity.dart';

import '../../../../config/router/app_route.dart';
import '../../domain/use_case/auth_usecase.dart';
import '../state/auth_state.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, AuthState>((ref) {
  return AuthViewModel(
    ref.read(authUseCaseProvider),
  );
});

class AuthViewModel extends StateNotifier<AuthState> {
  final AuthUseCase _authUseCase;

  AuthViewModel(this._authUseCase) : super(AuthState(isLoading: false));

  Future<void> registerUser(ConsumerEntity consumer) async {
    state = state.copyWith(isLoading: true);
    var data = await _authUseCase.registerUser(consumer);
    data.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.error,
      ),
      (success) => state = state.copyWith(
        isLoading: false,
        error: null,
      ),
    );
  }

  Future<void> loginUser(
      BuildContext context, String email, String password) async {
    state = state.copyWith(isLoading: true);

    var data = await _authUseCase.loginUser(email, password);
    data.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.error);
        showSnackBar(context, failure.error);
      },
      (success) {
        state = state.copyWith(isLoading: false, error: null);

        Navigator.popAndPushNamed(context, AppRoute.dashboardRoute);
      },
    );
  }

  // Future<void> uploadImage(File file) async {
  //   state = state.copyWith(isLoading: true);
  //   var data = await _authUseCase.uploadProfilePicture(file);
  //   data.fold(
  //     (l) {
  //       state = state.copyWith(isLoading: false, error: l.error);
  //     },
  //     (imageName) {
  //       state =
  //           state.copyWith(isLoading: false, error: null, imageName: imageName);
  //     },
  //   );
  // }
}
