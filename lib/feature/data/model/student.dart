import 'package:equatable/equatable.dart';

class Student extends Equatable {
  late final String name;
  late final String number;
  late final String profileImage;

  Student(String name, String number, String profileImage) {
    name = this.name;
    number = this.number;
    profileImage = this.profileImage;
  }

  @override
  List<Object?> get props =>
      [
        name,
        number,
        profileImage,
      ];
}
