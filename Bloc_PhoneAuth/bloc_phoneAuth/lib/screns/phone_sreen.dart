import 'package:bloc_phoneAuth/screns/verifyPhoneNo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/auth_cubits/auth_cubit.dart';
import '../cubits/auth_cubits/auth_state.dart';
import '../main.dart';

class PhoneScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Phone_Screen();
}

class Phone_Screen extends State<PhoneScreen> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          children: [
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                border: OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(2))
                    ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
              if (state is AuthCodeSentState) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerifyPhoneNo(),
                    ));
              }
            }, builder: (context, state) {
              if (state is AuthLoadingState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {
                        String phoneNumber = "+91" + phoneController.text;
                        BlocProvider.of<AuthCubit>(context)
                            .sendOTP(phoneNumber);
                      },
                      child: const Text('SIGN IN')));
            })
          ],
        ),
      ),
    );
  }
}
