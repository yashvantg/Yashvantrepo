import 'package:get/get.dart';

class SignUpController extends GetxController {
  final RxString selectedBirthDate = 'Select Date'.obs;

  final RxString selectedgender = ''.obs;

  final RxString selectdesignation = ''.obs;

  // ignore: non_constant_identifier_names
  void chnageBirthDate(String Date) {
    selectedBirthDate.value = Date;
  }
}
