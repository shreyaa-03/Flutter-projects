import 'package:block_form_validate/screens/sign_in/blocs/signin_bloc.dart';
import 'package:block_form_validate/screens/sign_in/blocs/signin_event.dart';
import 'package:block_form_validate/screens/sign_in/blocs/signin_state.dart';
import 'package:block_form_validate/screens/sign_in/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SigninPage();
}

class _SigninPage extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
          },
        ),
        title: Text("Sign In with Email"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: ListView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            BlocBuilder<SigninBloc, SigninState>(
              builder: (context, state) {
                if (state is SigninErrorState) {
                  return Text(
                    state.errorMessage,
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  );
                } else {
                  return Container();
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              onChanged: (val) {
                BlocProvider.of<SigninBloc>(context).add(SigninTextChangedEvent(
                    emailController.text, passwordController.text));
              },
              decoration: InputDecoration(hintText: 'Email Address'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              onChanged: (val) {
                BlocProvider.of<SigninBloc>(context).add(SigninTextChangedEvent(
                    emailController.text, passwordController.text));
              },
              decoration: InputDecoration(hintText: 'Password'),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<SigninBloc, SigninState>(builder: (context, state) {
              if (state is SigninLoadingState) {
                return Center(child: CircularProgressIndicator());
              }
              return ElevatedButton(
                onPressed: () {
                  if (state is SigninValidState) {
                    BlocProvider.of<SigninBloc>(context).add(
                        SigninSubmittedEvent(
                            emailController.text, passwordController.text));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      (state is SigninValidState) ? Colors.blue : Colors.grey,
                ),
                child: Text('SIGN IN'),
              );
            })
          ],
        ),
      ),
    );
  }
}
