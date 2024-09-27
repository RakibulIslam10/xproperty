import 'package:get/get.dart';

class PriceController extends GetxController {
  var selectedCurrency = 'USD'.obs;

  void changeCurrency(String? newCurrency) {
    selectedCurrency.value = newCurrency!;
  }
}

class SqController extends GetxController {
  var selectedFeet = 'USD'.obs;

  void changeFeet(String? newCurrency) {
    selectedFeet.value = newCurrency!;
  }
}
