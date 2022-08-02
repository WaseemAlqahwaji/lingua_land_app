import 'dart:io';

import 'package:image_picker/image_picker.dart';

class MyImagePicker {
  late File image;
  ImagePicker imagePickerObj = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    final pikedImage = await imagePickerObj.pickImage(source: imageSource);
    if (pikedImage != null) {
      image = File(pikedImage.path);
    }
  }
}
