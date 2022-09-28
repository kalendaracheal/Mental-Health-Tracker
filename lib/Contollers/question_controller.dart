import 'package:get/get.dart';

final questionCtrlr = Get.put(QuestionController());

class QuestionController extends GetxController{
  int counter = 0;
  int selectedRadio = 0;

  addAnswer(int value){
    counter = counter + value;
    update();
    // print(counter);
  }
}