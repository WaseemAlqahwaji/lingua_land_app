import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lingua_land/util/colors/colors.dart';

class Components {
  static Widget getImageCameraGalleryButton({
    required IconData listTileIcon,
    required String listTileLable,
    required VoidCallback onPressed
  }) =>
      OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0))),
        ),
        child: ListTile(
          title: Text(listTileLable),
          leading: Icon(listTileIcon),
        ),
      );
}
