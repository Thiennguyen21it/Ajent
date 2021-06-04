import 'package:ajent/core/utils/enum_converter.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Person.dart';
import 'Degree.dart';
import 'Student.dart';

class AjentUser extends Person {
  String uid;
  String avatarUrl;
  String schoolName;
  String major;
  String educationLevel;
  List<String> subjects;
  String bio;
  List<Degree> degrees;
  List<Student> students;
  AjentUser(
      this.uid,
      String name,
      DateTime birthDay,
      Gender gender,
      String address,
      String phone,
      String mail,
      this.avatarUrl,
      this.schoolName,
      this.major,
      this.educationLevel,
      this.bio,
      [this.subjects,
      this.degrees,
      this.students])
      : super(name, birthDay, gender, address, phone, mail);

  AjentUser.fromJson(String uid, Map<String, dynamic> data)
      : super(
            data['name'],
            DateTime.parse(data['birthDay'].toDate().toString()),
            EnumConverter.stringToGender(data['gender']),
            data['address'],
            data['phone'],
            data['mail']) {
    this.uid = uid;
    avatarUrl = data['avatarUrl'];
    schoolName = data['schoolName'];
    major = data['major'];
    educationLevel = data['educationLevel'];
    bio = data['bio'];
  }
  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'birthDay': this.birthDay,
      'gender': EnumConverter.genderToString(this.gender),
      'address': this.address,
      'phone': this.phone,
      'mail': this.mail,
      'avatarUrl': this.avatarUrl,
      'schoolName': this.schoolName,
      'major': this.major,
      'educationLevel': this.educationLevel,
      'bio': this.bio,
    };
  }
}
