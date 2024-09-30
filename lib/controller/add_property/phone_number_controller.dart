import 'package:get/get.dart';

class PhoneNumberController extends GetxController {
  var selectedCountryCode = ''.obs;
  var phoneNumber = ''.obs;

  void setCountryCode(String code) {
    selectedCountryCode.value = code;
  }

  void setPhoneNumber(String number) {
    phoneNumber.value = number;
  }
}