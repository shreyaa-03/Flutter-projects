import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/auth_cubits/auth_cubit.dart';
import '../cubits/auth_cubits/auth_state.dart';
import '../main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoggedOutState) {
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            }
          },
          builder: (context, state) {
            return ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context).logout();
                },
                child: Text("Log out"));
          },
        ),
      ),
    );
  }
}
