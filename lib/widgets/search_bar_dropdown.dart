import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/custom_assets/assets.gen.dart';
import 'package:xproperty/views/utils/custom_color.dart';
import 'package:xproperty/views/utils/dimensions.dart';
import 'package:xproperty/widgets/common/others/custom_image_widget.dart';
import '../controller/add_property/search_bar_dropdown.dart';

class MySearchBarDropdownWidget extends StatelessWidget {
  final String hintText;
  final Function(String?) onChanged;

  MySearchBarDropdownWidget(
      {super.key, required this.hintText, required this.onChanged});

  final _controller = Get.put(SearchBarDropdownController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSize * 0.4),
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: CustomColor.primaryLightColor),
        icon: CustomImageWidget(
          path: Assets.icons.dropdown,
          height: Dimensions.heightSize * 0.3,
        ),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
            labelStyle: TextStyle(
                color: CustomColor.secondaryLightColor.withOpacity(0.90)),
            label: Text(hintText),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: CustomColor.primaryLightColor, width: 1.5),
              borderRadius: BorderRadius.circular(Dimensions.radius * 2.4),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: CustomColor.primaryLightColor, width: 1.5),
                borderRadius: BorderRadius.circular(Dimensions.radius * 2.4)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: CustomColor.primaryLightColor, width: 1.5),
                borderRadius: BorderRadius.circular(Dimensions.radius * 2.4)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                    color: CustomColor.primaryLightColor, width: 1.5),
                borderRadius: BorderRadius.circular(Dimensions.radius * 2.4))),
        items: _controller.addressList
            .map(
              (e) => DropdownMenuItem<String>(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}
