import 'package:flutter/material.dart';
import 'package:use_cases_example/src/feature/domain/entities/user.dart';
import 'package:use_cases_example/src/feature/domain/use_cases/sign_in_user.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider(this._signInUser);
  final SignInUser _signInUser;

  User _currentUser;

  void singInUser(String email, String password) async {
    final user = await _signInUser(email, password);
    _currentUser = user;
    notifyListeners();
  }
}
