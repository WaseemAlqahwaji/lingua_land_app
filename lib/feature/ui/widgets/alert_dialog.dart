import 'package:flutter/material.dart';
import 'package:lingua_land/feature/ui/components/components.dart';
import 'package:lingua_land/util/colors/colors.dart';
import 'package:lingua_land/util/responsive/responsive.dart';

class MyAlertDialog {
  static Widget alertDialog(BuildContext context) => AlertDialog(
        title: Text("Select image :"),
        content: Container(
          height: Responsive.getHeight(context) * 0.2,
          child: Column(
            children:
            [
              Expanded(
                child: Components.getImageCameraGalleryButton(
                    listTileIcon: Icons.camera_alt, listTileLable: "Camera"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Components.getImageCameraGalleryButton(
                    listTileIcon: Icons.browse_gallery_outlined,
                    listTileLable: "Gallery"),
              ),
            ],
          ),
        ),
      );
}
