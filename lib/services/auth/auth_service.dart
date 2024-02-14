// the main logic behind creating this auth service is to learn main use of auth service which is to gather all the information from all providers(i.e SIMPLE sign in with email and password, signIn with google,apple and all sort of that stuff) and fuse it to main UI.but here we are creating auth_service to just fuse simple sign in with email and password to our main UI.

import 'package:mynotebook/services/auth/auth_provider.dart';
import 'package:mynotebook/services/auth/auth_user.dart';
import 'package:mynotebook/services/auth/firebase_auth_provider.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;
  const AuthService(this.provider);

  factory AuthService.firebase() => AuthService(FirebaseAuthProvider());
  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) =>
      provider.createUser(
        email: email,
        password: password,
      );
  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) =>
      provider.logIn(
        email: email,
        password: password,
      );

  @override
  Future<void> logOut() => provider.logOut();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();

  @override
  Future<void> initialize() => provider.initialize();
}
