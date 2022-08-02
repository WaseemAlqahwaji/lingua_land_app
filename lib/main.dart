import 'package:flutter/material.dart';
import 'package:lingua_land/util/theme/light_theme.dart';

import 'feature/ui/screens/home_layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeLayout(),
      theme: LightTheme.lightTheme,
    );
  }
}

