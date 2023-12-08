import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthCodeSentState extends AuthState {}

class AuthVerifiedState extends AuthState {}

class AuthLogginState extends AuthState {
  final User firebaseUser;
  AuthLogginState(this.firebaseUser);
}

class AuthLoggedOutState extends AuthState {}

class AuthErrorState extends AuthState {
  final String error;
  AuthErrorState(this.error);
}

class AuthInitialState extends AuthState {}

class AuthLoadingState extends AuthState {}
