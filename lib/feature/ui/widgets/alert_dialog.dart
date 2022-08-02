import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lingua_land/feature/ui/components/components.dart';
import 'package:lingua_land/util/image_picker/image_picker.dart';
import 'package:lingua_land/util/responsive/responsive.dart';

class MyAlertDialog {
  static Widget alertDialog(BuildContext context) {
    MyImagePicker myImagePikerObj = MyImagePicker();
    return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(35.0),
          ),
        ),
        title: const Text("Select image :"),
        content: SizedBox(
          height: Responsive.getHeight(context) * 0.2,
          child: Column(
            children: [
              Expanded(
                child: Components.getImageCameraGalleryButton(
                  onPressed: () {
                    myImagePikerObj.getImage(ImageSource.camera);
                  },
                  listTileIcon: Icons.camera_alt,
                  listTileLable: "Camera",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Components.getImageCameraGalleryButton(
                  onPressed: ()
                  {
                    myImagePikerObj.getImage(ImageSource.gallery);
                  },
                  listTileIcon: Icons.browse_gallery_outlined,
                  listTileLable: "Gallery",
                ),
              ),
            ],
          ),
        ),
      );
}
}
