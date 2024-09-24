import 'package:flutter/material.dart';
import 'package:xproperty/custom_assets/assets.gen.dart';
import 'package:xproperty/views/utils/custom_color.dart';
import 'package:xproperty/views/utils/dimensions.dart';
import 'package:xproperty/widgets/common/others/custom_image_widget.dart';

class MyDropdownWidget extends StatelessWidget {
  final List<String> options;

  const MyDropdownWidget({
    required this.options,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      textStyle: const TextStyle(color: CustomColor.primaryLightColor),
      selectedTrailingIcon: CustomImageWidget(
        path: Assets.icons.dropdown,
        height: Dimensions.heightSize * 0.3,
      ),
      trailingIcon: CustomImageWidget(
        path: Assets.icons.dropdown,
        height: Dimensions.heightSize * 0.3,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: CustomColor.primaryLightColor),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
      // label: Text("Select Square Footage", style: const TextStyle(color: CustomColor.primaryLightColor)),
      dropdownMenuEntries: options.map((option) {
        return DropdownMenuEntry(
          value: Text(option),
          label: option,
        );
      }).toList(),
    );
  }
}
