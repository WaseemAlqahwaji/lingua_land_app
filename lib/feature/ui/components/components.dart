import 'package:flutter/material.dart';
import 'package:lingua_land/util/colors/colors.dart';

class Components {
  static Widget getImageCameraGalleryButton({
    required IconData listTileIcon,
    required String listTileLable,
  }) =>
      InkWell(
        onTap: () {
          print("helooo");
        },
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.mainLightColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          alignment: Alignment.center,
          child: ListTile(
            leading: Icon(
              listTileIcon,
            ),
            iconColor: Colors.white,
            title: Text(
              listTileLable,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
}
