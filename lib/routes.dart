import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_bloc/cubits/first_cubit.dart';
import 'package:increment_bloc/cubits/second_cubit.dart';
import 'package:increment_bloc/cubits/third_cubit.dart';
import 'package:increment_bloc/screen/first_screen.dart';
import 'package:increment_bloc/screen/second_screen.dart';
import 'package:increment_bloc/screen/third_screen.dart';

class Routes {
  static Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case "./first":
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => FirstCubit(),
            child: const FirstScreen(),
          );
        });

      case './second':
        Map<String, dynamic> arguments =
            routeSettings.arguments as Map<String, dynamic>;

        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => SecondCubit(),
            child: 
            SecondScreen(
              title: arguments['title'],
            ),
          );
        });
      case './third':
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
            create: (context) => ThirdCubit(),
            child: const ThirdScreen(),
          );
        });
    }
    return null;
  }
}
