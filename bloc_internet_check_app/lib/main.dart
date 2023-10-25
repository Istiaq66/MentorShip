import 'package:bloc_internet_check_app/bloc/internet_bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/internet_bloc/internet_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: BlocConsumer<InternetBloc, InternetState>(
          listener: (context, state) {
            if (state is InternetGainedState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Connected',
                  )));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'Connected',
                  )));
            }
          },
          builder: (context, state) {
            if (state is InternetGainedState) {
              return const Text(
                'Connected',
                style: TextStyle(color: Colors.green),
              );
            } else  if (state is InternetLostState) {
              return const Text(
                'Not Connected',
                style: TextStyle(color: Colors.red),
              );
            }else{
               return const Text(
                'Loading',
              );
            }
          },
        ),
      ),
    );
  }
}
