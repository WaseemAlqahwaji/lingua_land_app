import 'package:flutter/material.dart';
import 'package:lingua_land/feature/ui/widgets/drawer.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer.myDrawer(context),
      appBar: AppBar(
        title: const Text("Lingua Land"),
      ),
    );
  }
}
