import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedValue = ''.obs;

  final List<String> genderItems = [
    'Dhaka',
    'Dhaka3',
    'Dhaka3',
    'Dhaka3',
  ];

  void onDropdownChanged(String? value) {
    selectedValue.value = value ?? '';
  }
}
