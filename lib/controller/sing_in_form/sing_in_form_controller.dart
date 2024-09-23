import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../routes/routes.dart';

class SingInfFormController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {

    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(Routes.navigationScreen);
    } else {
      Get.snackbar(
        'Error',
        'Please fix the errors in the form.',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
