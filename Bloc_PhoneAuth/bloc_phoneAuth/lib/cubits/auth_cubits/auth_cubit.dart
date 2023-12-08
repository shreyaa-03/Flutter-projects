import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  AuthCubit() : super(AuthInitialState()) {
    User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      //Logged in
      emit(AuthLogginState(currentUser));
    } else {
      //logged out
      emit(AuthLoggedOutState());
    }
  }

  String? _verificationID;
  void sendOTP(String phoneNo) async {
    emit(AuthLoadingState());
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      codeSent: (verificationId, forceResendingToken) {
        _verificationID = verificationId;
        emit(AuthCodeSentState());
      },
      verificationCompleted: (phoneAuthCredential) {
        signinWithOtp(phoneAuthCredential);
      },
      verificationFailed: (error) {
        emit(AuthErrorState(error.message.toString()));
      },
      codeAutoRetrievalTimeout: (verificationId) {
        _verificationID = verificationId;
      },
    );
  }

  void verifyOTP(String otp) async {
    emit(AuthLoadingState());
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: _verificationID!, smsCode: otp);
    signinWithOtp(credential);
  }

  void signinWithOtp(PhoneAuthCredential credential) async {
    try {
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      if (userCredential.user != null) {
        emit(AuthLogginState(userCredential.user!));
      }
    } on FirebaseAuthException catch (ex) {
      emit(AuthErrorState(ex.message.toString()));
    }
  }

  void logout() async {
    await _auth.signOut();
    emit(AuthLoggedOutState());
  }
}
