import 'package:flutter/material.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/others/custom_image_widget.dart';
import 'common/text_lebels/title_heading3_widget.dart';

class CustomDowerItemsListWidget extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color backgroundColor;
  final VoidCallback onTap;

  const CustomDowerItemsListWidget({
    super.key,
    required this.iconPath,
    required this.text,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.marginSizeVertical * 0.1),
      color: backgroundColor,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.marginSizeHorizontal),
        child: ListTile(
          selected: true,
          selectedColor: CustomColor.redColor,
          minTileHeight: Dimensions.heightSize * 3.5,
          contentPadding:
              EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
          onTap: onTap,
          focusColor: CustomColor.primaryLightColor,
          leading: CustomImageWidget(
            path: iconPath,
            height: Dimensions.heightSize * 1.4,
          ),
          title: TitleHeading3Widget(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: Dimensions.headingTextSize3,
          ),
          splashColor: Colors.blue, // Add the splash color here
        ),
      ),
    );
  }
}
