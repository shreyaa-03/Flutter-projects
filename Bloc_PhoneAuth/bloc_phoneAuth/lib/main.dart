// import 'dart:io';

import 'package:bloc_phoneAuth/screns/home_page.dart';
import 'package:bloc_phoneAuth/screns/phone_sreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/auth_cubits/auth_cubit.dart';
import 'cubits/auth_cubits/auth_state.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // var defaultfirebaseoptions;
  // await Firebase.initializeApp(
  // options: defaultfirebaseoptions.currentplatform,
  //   );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<AuthCubit, AuthState>(
          buildWhen: (oldState, newState) {
            return oldState is AuthInitialState;
          },
          builder: (context, state) {
            if (state is AuthLogginState) {
              return HomePage();
            } else if (state is AuthLogginState) {
              return HomeScreen();
            } else {
              return HomeScreen();
            }
          },
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // height: 20,
          // width: 50,
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneScreen(),
                      ));
                },
                child: Text("Phone Login in"))
          ]),
        ),
      ),
    );
  }
}
