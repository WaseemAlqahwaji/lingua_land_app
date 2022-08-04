import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lingua_land/core/bloc_observer.dart';
import 'package:lingua_land/feature/bloc/alert_dialog_cubit/alert_dialog_cubit.dart';
import 'package:lingua_land/feature/ui/screens/home_layout/home_layout.dart';
import 'package:lingua_land/util/theme/light_theme.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(
        const MyApp(),
      );
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:
      [
        BlocProvider(
          create: (context) => AlertDialogCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeLayout(),
        theme: LightTheme.lightTheme,
      ),
    );
  }
}
