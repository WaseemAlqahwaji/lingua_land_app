import 'package:flutter/material.dart';
import 'package:lingua_land/feature/ui/widgets/alert_dialog.dart';
import 'package:lingua_land/util/responsive/responsive.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: Responsive.getWidth(context) * 0.75,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: Responsive.getHeight(context) * 0.1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/my_image.jpg"),
                        radius: 50.0,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: ((context) => MyAlertDialog.alertDialog(context)),
                          );
                        },
                        child: CircleAvatar(
                          radius: 15.0,
                          child: Icon(
                            Icons.camera_alt,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  FittedBox(
                    child: Text(
                      "Abdullah Mohammed Ahmad",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: "RaleWay",
                      ),
                    ),
                  ),
                  FittedBox(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        "+96397973038",
                        style: TextStyle(
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Lingua Land"),
      ),
    );
  }
}
