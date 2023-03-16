import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_bloc/cubits/first_cubit.dart';
import 'package:increment_bloc/cubits/second_cubit.dart';
import 'package:increment_bloc/screen/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          BlocProvider.of<FirstCubit>(context, listen: false).increment();
        },
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, './second', arguments: {
                "title": 'dynamic title'
              });
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          )
        ],
        title: const Text('First Screen'),
      ),
      body: Center(
        child: BlocBuilder<FirstCubit, int>(
          builder: (context, state) {
            return Text(
              state.toString(),
            );
          },
        ),
      ),
    );
  }
}
