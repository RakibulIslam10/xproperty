import 'package:get/get.dart';

class NumberSelectionController extends GetxController {
  final selectedIndex = 0.obs;
  final numbers = ['1', '2', '3', '4' '5+'];

  void selectNumber(int index) {
    selectedIndex.value = index;
  }
}
