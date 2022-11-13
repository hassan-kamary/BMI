import 'package:get/get.dart';

class GenderMandF extends GetxController {
  String? gender;

  void male() {
    gender = "male";

    update();
  }

  void female() {
    gender = "female";

    update();
  }
}

class Copy extends GetxController {
  String? name;

  @override
  void onInit() {
    name = Get.arguments["name"];

    super.onInit();
  }
}

class Copy2 extends GetxController {
  String? age;
  String? gender;
  String? weight;
  String? height;
  String? result;

  @override
  void onInit() {
    age = Get.arguments["age"];

    gender = Get.arguments["gender"];
    weight = Get.arguments["weight"];
    height = Get.arguments["height"];
    result = Get.arguments["result"];
    super.onInit();
  }
}
