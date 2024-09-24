import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SearchBarDropdownController extends GetxController {
  RxString initialValue = "Rakib".obs;
  List<String> menuList = ["Rakib", "Emon Khan", " Khan"];

  void updateInitialValue(String newValue) {
    initialValue.value = newValue;
  }
}