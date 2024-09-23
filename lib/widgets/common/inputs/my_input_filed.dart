import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/sing_in_form/sing_in_form_controller.dart';
import '../../../views/utils/custom_color.dart';
import '../../../views/utils/dimensions.dart';

class MyInputFiled extends StatelessWidget {
  final String? label;
  final String? hintText;
  final TextInputType keyboardType;
  final bool isRequired;
  final String? initialValue;
  final IconData? suffixIcon;
  final FormFieldValidator<String>? validator;

  MyInputFiled({
    super.key,
    this.label,
    this.keyboardType = TextInputType.text,
    this.isRequired = false,
    this.initialValue,
    this.hintText,
    this.suffixIcon,
    this.validator,
  });

  SingInfFormController controller = Get.put(SingInfFormController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSize * 0.65),
      child: TextFormField(
        style: const TextStyle(color: CustomColor.primaryLightColor),
        keyboardType: keyboardType,
        initialValue: initialValue,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: label,
          labelStyle: TextStyle(
              fontSize: Dimensions.headingTextSize4,
              fontWeight: FontWeight.bold,
              color: CustomColor.secondaryLightColor),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColor.secondaryLightColor),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColor.primaryLightColor),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColor.redColor),
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColor.redColor),
          ),
          suffixIcon: suffixIcon != null
              ? Icon(
            suffixIcon,
            color:
            CustomColor.secondaryLightColor, // Adjust color as needed
          )
              : null,
        ),
        validator: (value) {
          if (isRequired && value!.isEmpty) {
            return 'This field is required';
          }

          if (validator != null) {
            return validator!(value);
          }

          return controller.validateEmail(value);
        },
      ),
    );
  }
}