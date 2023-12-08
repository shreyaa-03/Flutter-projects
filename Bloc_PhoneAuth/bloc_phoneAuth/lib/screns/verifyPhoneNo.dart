import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/auth_cubits/auth_cubit.dart';
import '../cubits/auth_cubits/auth_state.dart';
import 'home_page.dart';

class VerifyPhoneNo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Verify();
}

class _Verify extends State<VerifyPhoneNo> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Phone Number '),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          children: [
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                hintText: '6 digit OTP',
                border: OutlineInputBorder(
                    // borderRadius: BorderRadius.all(Radius.circular(2))
                    ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthLogginState) {
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                } else if (state is AuthErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      duration: Duration(milliseconds: 3000),
                      content: Text(state.error)));
                }
              },
              builder: (context, state) {
                if (state is AuthLoadingState) {
                  return Center(child: CircularProgressIndicator());
                }
                return SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AuthCubit>(context)
                              .verifyOTP(otpController.text);
                        },
                        child: const Text('VERIFY')));
              },
            )
          ],
        ),
      ),
    );
  }
}
