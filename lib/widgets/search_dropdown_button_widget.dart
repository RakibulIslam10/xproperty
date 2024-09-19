import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';

class SearchDropdownButton extends StatelessWidget {
  final List<String> items;
  final String? initialValue;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String?>? onChanged;

  const SearchDropdownButton({
    required this.items,
    this.initialValue,
    this.hintText,
    this.validator,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.2),
      child: DropdownButtonFormField2<String>(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: CustomColor.primaryLightColor, width: 2),
                borderRadius: BorderRadius.circular(Dimensions.radius * 2))),
        hint: Text(hintText ?? 'Select an option'),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        validator: validator,
        onChanged: onChanged,
        value: initialValue,
      ),
    );
  }
}
