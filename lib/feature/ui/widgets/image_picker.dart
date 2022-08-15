import 'dart:io';

import 'package:image_picker/image_picker.dart';

class MyImagePicker {
  static File? image;
  static ImagePicker imagePickerObj = ImagePicker();
  static Future changeImage(ImageSource imageSource) async {
    final pikedImage = await imagePickerObj.pickImage(source: imageSource);
    if (pikedImage != null)
    {
      image = File(pikedImage.path);
    }else
      {
        print(pikedImage);
        print("null value");
      }
  }
}

