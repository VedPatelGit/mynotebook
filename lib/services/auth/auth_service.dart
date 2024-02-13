// the main logic behind creating this auth service is to learn main use of auth service which is to gather all the information from all providers(i.e SIMPLE sign in with email and password, signIn with google,apple and all sort of that stuff) and fuse it to main UI.but here we are creating auth_service to just fuse simple sign in with email and password to our main UI.

import 'package:mynotebook/services/auth/auth_provider.dart';
import 'package:mynotebook/services/auth/auth_user.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;

  const AuthService(this.provider);

  @override
  Future<AuthUser> createUser({
    required String email,
    required String password,
  }) => provider.createUser(email: email, password: password,)
  @override
  // TODO: implement currentUser
  AuthUser? get currentUser => throw UnimplementedError();

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) {
    // TODO: implement logIn
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<void> sendEmailVerification() {
    // TODO: implement sendEmailVerification
    throw UnimplementedError();
  }
}
