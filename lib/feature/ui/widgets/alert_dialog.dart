import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lingua_land/feature/bloc/alert_dialog_cubit/alert_dialog_cubit.dart';
import 'package:lingua_land/feature/ui/components/components.dart';
import 'package:lingua_land/util/responsive/responsive.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AlertDialogCubit obj = AlertDialogCubit.get(context);
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
                onPressed: ()async {
                  await obj.getImage(ImageSource.camera);
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
                onPressed: () {
                  obj.getImage(ImageSource.gallery);
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

