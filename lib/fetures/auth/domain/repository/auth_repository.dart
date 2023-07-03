import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:room_finder_app/fetures/auth/data/repository/auth_remote_repository.dart';
import 'package:room_finder_app/fetures/auth/domain/entity/consumer_entity.dart';

import '../../../../core/failure/failure.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return ref.read(authRemoteRepositoryProvider);
});

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerUser(ConsumerEntity consumer);
  Future<Either<Failure, bool>> loginUser(String email, String password);
  // Future<Either<Failure, String>> uploadProfilePicture(File file);
}
