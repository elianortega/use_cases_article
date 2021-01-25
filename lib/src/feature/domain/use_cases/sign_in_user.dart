import 'package:use_cases_example/src/feature/domain/entities/user.dart';
import 'package:use_cases_example/src/feature/domain/repositories/auth_repository_interface.dart';

class SignInUser {
  SignInUser(this._authRepo);

  final AuthRepositoryInterface _authRepo;

  Future<User> call(String email, String password) async {
    return await _authRepo.singIn(email, password);
  }
}
