import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/custom_assets/assets.gen.dart';
import 'package:xproperty/views/utils/custom_color.dart';
import 'package:xproperty/views/utils/dimensions.dart';
import 'package:xproperty/widgets/common/others/custom_image_widget.dart';
import '../controller/add_property/search_bar_dropdown.dart';

class MySearchBarDropdownWidget extends StatelessWidget {
  final String hintText;

  MySearchBarDropdownWidget({super.key, required this.hintText});

  final _controller = Get.put(SearchBarDropdownController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSize * 0.4),
      child: DropdownButtonFormField(
        icon: CustomImageWidget(
          path: Assets.icons.dropdown,
          height: Dimensions.heightSize * 0.3,
        ),
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
            hintText: hintText,
            hintStyle: TextStyle(
                color: CustomColor.secondaryLightColor.withOpacity(0.90)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: CustomColor.primaryLightColor,width: 1.5),
                borderRadius: BorderRadius.circular(Dimensions.radius * 2.4))),
        items: _controller.menuList
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: (value) {
          _controller.updateInitialValue(value!);
        },
      ),
    );
  }
}
