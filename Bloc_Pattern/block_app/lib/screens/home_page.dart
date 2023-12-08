import 'package:block_app/blocs/internetBlocs/internet_bloc.dart';
import 'package:block_app/blocs/internetBlocs/internet_state.dart';
import 'package:block_app/cubits/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
            listener: (context, state) {
          if (state == InternetState.Gained) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Connected'),
              backgroundColor: Colors.green,
            ));
          } else if (state == InternetState.Lost) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Disconnected'),
              backgroundColor: Colors.red,
            ));
          }
        }, builder: (context, state) {
          if (state == InternetState.Gained) {
            return Text('Connected');
          } else if (state == InternetState.Lost) {
            return Text('Not Connected');
          } else {
            return Text('Loading...');
          }
        }),
        //
      ),
    );
  }
}
