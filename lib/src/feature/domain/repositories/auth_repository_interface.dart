import 'package:use_cases_example/src/feature/domain/entities/user.dart';

abstract class AuthRepositoryInterface {
  Future<User> singIn(String email, String password);
}
