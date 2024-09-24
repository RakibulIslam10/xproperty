import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';

class SignInFormController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  setValidator() {
    return  (String? value) {
      if (value!.isEmpty) {
        return Strings.pleaseFillOutTheField;
      } else {
        return null;
      }
    };
  }

  // String? validateEmail(String? email) {
  //   if (email!.isEmpty) {
  //     return 'Please enter your email';
  //   }
  //   if (!RegExp(r"^\S+@\S+\.\S+$").hasMatch(email)) {
  //     return 'Invalid email format';
  //   }
  //   return null;
  // }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return "Password cannot be empty";
    }

    return null;
  }

  void signIn() {
    if (formKey.currentState!.validate()) {
      print('Sign-in with email: ${emailController.text}');
      print('Sign-in with password: ${passwordController.text}');
      Get.toNamed(Routes.navigationScreen);
    }
  }
}
