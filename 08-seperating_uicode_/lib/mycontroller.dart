import 'package:get/get.dart';
import 'package:seperating_uicode_/student.dart';

class Mycontroller extends GetxController {
//   var student = Student();
//   void convertToUpperCase() {
//     student.name.value = student.name.value.toUpperCase();
//   }
  var student = Student(name: 'Tom', age: 20).obs;

  void convertToUpperCase() {
    student.update((student) {
      student?.name = student.name?.toUpperCase();
    });
  }
}
