import 'package:flutter/material.dart';

import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import '../views/utils/size.dart';
import 'common/others/custom_image_widget.dart';
import 'common/title_sub_title_widget.dart';

class ContactInfoWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String iconPath;
  final double? iconSize;
  final Color? color;


  const ContactInfoWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.iconPath, this.iconSize, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: Dimensions.marginSizeVertical * 0.5),
      child: Row(
        children: [
          CustomImageWidget(
            path: iconPath,
            height:  iconSize ?? Dimensions.heightSize * 2,
            color: color,
          ),
          horizontalSpace(Dimensions.marginSizeHorizontal),
          TitleSubTitleWidget(
            subTitleFontSize: Dimensions.headingTextSize5,
            titleFontSize: Dimensions.headingTextSize3,
            title: title,
            titleColor: CustomColor.primaryLightColor,
            subTitleColor: CustomColor.secondaryLightColor,
            subTitle: subTitle,
          ),
        ],
      ),
    );
  }
}
