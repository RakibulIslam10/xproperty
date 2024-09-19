import 'package:get/get.dart';

import '../../language/language.dart';

class ButtonColorController extends GetxController {
  RxInt myIndex = 0.obs;
  var selectedIndex = 0.obs;
  var selectedIndex1 = 0.obs;
  var selectedIndex2 = 0.obs;

  final List buttonTextList = [
    Strings.sale,
    Strings.rent,
  ];

  sellAndRentButtonOnChange(int index) {
    myIndex.value = index;
  }

  void outlineButtonOnchange(int index) {
    selectedIndex.value = index;
  }

  void streetOutlineButtonOnchange(int index) {
    selectedIndex1.value = index;
  }

  void gardenFilterOutlineButtonOnchange(int index) {
    selectedIndex2.value = index;
  }
}
