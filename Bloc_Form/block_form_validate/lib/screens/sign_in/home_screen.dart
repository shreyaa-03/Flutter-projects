import 'package:block_form_validate/screens/sign_in/blocs/signin_bloc.dart';
import 'package:block_form_validate/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlocProvider(
                                create: (context) => SigninBloc(),
                                child: SigninScreen()),
                          ));
                    },
                    child: Text("SIGN IN"))),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("LOGIN"))),
          ],
        ),
      ),
    );
  }
}
