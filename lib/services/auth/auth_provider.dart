//This class sets interface for all the providers we can use such
// as email and password provider,sign in with google or twitter,etc.

import 'package:mynotebook/services/auth/auth_user.dart';

abstract class AuthProvider {
  Future<void> initialize();
  AuthUser? get currentUser; //will return currently autheticated user.
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });

  Future<AuthUser> createUser({
    required String email,
    required String password,
  });

  Future<void> logOut();
  Future<void> sendEmailVerification();
}
