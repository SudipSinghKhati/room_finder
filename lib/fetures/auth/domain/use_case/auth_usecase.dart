import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:room_finder_app/fetures/auth/domain/entity/consumer_entity.dart';

import '../../../../core/failure/failure.dart';
import '../repository/auth_repository.dart';

final authUseCaseProvider = Provider((ref) {
  return AuthUseCase(
    ref.read(authRepositoryProvider),
  );
});

class AuthUseCase {
  final IAuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<Either<Failure, bool>> registerUser(ConsumerEntity consumer) async {
    return await _authRepository.registerUser(consumer);
  }

  Future<Either<Failure, bool>> loginUser(
      String email, String password) async {
    return await _authRepository.loginUser(email, password);
  }

  // Future<Either<Failure, String>> uploadProfilePicture(File file) async {
  //   return await _authRepository.uploadProfilePicture(file);
  // }
}
