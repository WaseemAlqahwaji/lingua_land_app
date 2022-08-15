import 'package:flutter/material.dart';
import 'package:lingua_land/feature/ui/widgets/alert_dialog.dart';
import 'package:lingua_land/feature/ui/widgets/image_picker.dart';
import 'package:lingua_land/feature/ui/widgets/open_image.dart';
import 'package:lingua_land/util/responsive/responsive.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Responsive.getWidth(context) * 0.75,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Responsive.getHeight(context) * 0.1,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (
                                context,
                                animation,
                                secondaryAnimation,
                              ) =>
                                  const OpenedImage(),
                              transitionDuration: const Duration(
                                milliseconds: 500,
                              ))),
                      child: Hero(
                        tag: "imageTag",
                        child: CircleAvatar(
                          radius: Responsive.getWidth(context) * 0.25,
                          backgroundImage: MyImagePicker.image == null
                              ? const AssetImage(
                                  "assets/images/profile_image.jpg")
                              : Image.file(MyImagePicker.image!).image,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: ((context) => const MyAlertDialog()),
                        );
                      },
                      child: CircleAvatar(
                        radius: Responsive.getWidth(context) * 0.05,
                        child: Icon(
                          Icons.camera_alt,
                          size: Responsive.getWidth(context) * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const FittedBox(
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
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "+96397973038",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
