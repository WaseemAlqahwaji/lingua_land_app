import 'package:flutter_bloc/flutter_bloc.dart';

part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit() : super(FirstInitial());
}
