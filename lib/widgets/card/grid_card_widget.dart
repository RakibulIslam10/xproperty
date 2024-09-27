import 'package:flutter/material.dart';
import '../../views/utils/custom_color.dart';
import '../../views/utils/dimensions.dart';
import '../../views/utils/size.dart';
import '../common/others/custom_image_widget.dart';
import '../common/title_sub_title_widget.dart';

class GridCardWidget extends StatelessWidget {
  final String title;
  final String title2;
  final String imageUrl;
  final String subTitle;
  final String subTitle2;

  const GridCardWidget(
      {super.key,
      required this.title,
      required this.title2,
      required this.imageUrl,
      required this.subTitle,
      required this.subTitle2});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: CustomColor.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: crossCenter,
          mainAxisAlignment: mainSpaceBet,
          children: [
            Expanded(
              child: CustomImageWidget(
                path: imageUrl,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  TitleSubTitleWidget(
                    title: title,
                    subTitle: subTitle,
                    subTitleFontSize: Dimensions.headingTextSize6,
                    titleFontSize: Dimensions.headingTextSize4,
                    subTitleColor: CustomColor.secondaryWhiteColor,
                  ),
                  TitleSubTitleWidget(
                    title: title2,
                    subTitle: subTitle2,
                    subTitleFontSize: Dimensions.headingTextSize6,
                    titleFontSize: Dimensions.headingTextSize6,
                    titleColor: CustomColor.primaryDarkColor,
                    subTitleColor:
                        CustomColor.secondaryDarkColor.withOpacity(0.80),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
