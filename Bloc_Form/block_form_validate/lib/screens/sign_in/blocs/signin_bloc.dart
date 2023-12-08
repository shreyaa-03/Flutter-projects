import 'package:block_form_validate/screens/sign_in/blocs/signin_event.dart';
import 'package:block_form_validate/screens/sign_in/blocs/signin_state.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(SiginInitialState()) {
    on<SigninTextChangedEvent>((event, emit) => {
          if (EmailValidator.validate(event.emailValue) == false)
            {emit(SigninErrorState("Please enter a valid email address"))}
          else if (event.passwordValue.length < 8)
            {emit(SigninErrorState("Please enter minimum 7 characters"))}
          else
            {emit(SigninValidState())}
        });
    on<SigninSubmittedEvent>((event, emit) => {emit(SigninLoadingState())});
  }
}
