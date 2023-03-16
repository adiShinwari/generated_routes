import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/third_cubit.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          BlocProvider.of<ThirdCubit>(context, listen: false).increment();
        },
      ),
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: BlocBuilder<ThirdCubit, int>(
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
