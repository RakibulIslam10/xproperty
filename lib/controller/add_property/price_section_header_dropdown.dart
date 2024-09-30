import 'package:get/get.dart';

class PriceController extends GetxController {
  var selectedCurrency = 'USD'.obs;

  void updateCurrency(String? newCurrency) {
    if (newCurrency != null) {
      selectedCurrency.value = newCurrency;
    }
  }
}