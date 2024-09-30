import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/common/text_lebels/title_heading3_widget.dart';
import '../../../controller/add_property/price_section_header_dropdown.dart';
import '../../../custom_assets/assets.gen.dart';
import '../../../views/utils/custom_color.dart';
import '../../../views/utils/dimensions.dart';
import 'custom_image_widget.dart';

class SectionHeaderDropDownWidget extends StatelessWidget {
  final String title;
  final List<String> currencyOptions;
  final Function(String?) onChanged;

  SectionHeaderDropDownWidget({
    super.key,
    required this.title,
    required this.currencyOptions,
    required this.onChanged,
  });

  final priceController = Get.put(PriceController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleHeading3Widget(
          text: title,
        ),
        Obx(() => DropdownButton<String>(
            icon: CustomImageWidget(
              path: Assets.icons.dropdown,
              height: Dimensions.heightSize * 0.35,
            ),
            dropdownColor: CustomColor.whiteColor,
            underline: Container(),
            value: priceController.selectedCurrency.value, // Use the controller's value
            items: currencyOptions.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: Dimensions.marginSizeHorizontal * 0.3,
                  ),
                  child: Text(
                    value,
                    style: TextStyle(
                      color: CustomColor.primaryLightColor,
                      fontSize: Dimensions.headingTextSize5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              priceController.updateCurrency(value); // Update the controller
              onChanged(value); // Call the provided onChanged function
            },
          ),
        ),
      ],
    );
  }
}
