import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/second_cubit.dart';

class SecondScreen extends StatefulWidget {
  final String title;
  const SecondScreen({
    super.key,
    required this.title,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          BlocProvider.of<SecondCubit>(context, listen: false).increment();
        },
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, './third');
            },
            icon: const Icon(
              Icons.arrow_forward,
            ),
          )
        ],
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<SecondCubit, int>(
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
