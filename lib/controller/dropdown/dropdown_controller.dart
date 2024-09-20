import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DropdownController2 extends GetxController {
  final RxList<String> sqFeetList =
      RxList<String>([]); // Observable list for countries

  String? selectedCountry;

  @override
  void onInit() {
    super.onInit();
    sqFeetList.value = [
      "India",
      "USA",
      "China",
      "Canada"
    ]; // Example initialization
  }

  void setCountry(String newCountry) {
    selectedCountry = newCountry;
  }
}
