import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lingua_land/feature/bloc/alert_dialog_cubit/alert_dialog_state.dart';
import 'package:lingua_land/feature/ui/widgets/image_picker.dart';


class AlertDialogCubit extends Cubit<AlertDialogState> {
  AlertDialogCubit() : super(AlertDialogInitial());

  static AlertDialogCubit get(context) => BlocProvider.of(context);

  Future<void> getImage(ImageSource imageSource)
  async {
    if(MyImagePicker.image != null)
    {
      MyImagePicker.getImage(imageSource);
    }else
      {
        print("null value");
      }
  }
}
