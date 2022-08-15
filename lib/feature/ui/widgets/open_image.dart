import 'package:flutter/widgets.dart';
import 'package:lingua_land/feature/ui/widgets/image_picker.dart';

class OpenedImage extends StatelessWidget {
  const OpenedImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "imageTag",
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: MyImagePicker.image == null ? const AssetImage("assets/images/profile_image.jpg") : Image.file(MyImagePicker.image!).image,
          )
        ),
      ),
    );
  }
}
