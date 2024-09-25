import 'package:get/get.dart';

class PriceController extends GetxController {
  var selectedCurrency = 'USD'.obs;

  void changeCurrency(String? newCurrency) {
    selectedCurrency.value = newCurrency!;
  }
}

class SqFeetController extends GetxController {
  var selectedCurrency = 'Sq Feet'.obs;

}