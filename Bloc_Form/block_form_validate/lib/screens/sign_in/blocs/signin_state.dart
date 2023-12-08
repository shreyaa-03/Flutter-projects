abstract class SigninState {}

class SiginInitialState extends SigninState {}

class SigninValidState extends SigninState {}

class SigninErrorState extends SigninState {
  final String errorMessage;
  SigninErrorState(this.errorMessage);
}

class SigninLoadingState extends SigninState {}
