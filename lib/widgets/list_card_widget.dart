import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_assets/assets.gen.dart';
import '../routes/routes.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import '../views/utils/size.dart';
import 'common/others/custom_image_widget.dart';
import 'common/title_sub_title_widget.dart';

class ListCardItems extends StatelessWidget {
  final String title;
  final String title2;
  final String imageUrl;
  final String subTitle;
  final String subTitle2;

  const ListCardItems({
    super.key,
    required this.title,
    required this.title2,
    required this.imageUrl,
    required this.subTitle,
    required this.subTitle2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.detailsScreen);
      },
      child: Row(
        children: [
          CustomImageWidget(
            path: imageUrl,
            height: Dimensions.heightSize * 8,
            width: Dimensions.widthSize * 12,
            borderRadius: BorderRadius.circular(16),
          ),
          horizontalSpace(Dimensions.widthSize * 1.1),
          Column(
            crossAxisAlignment: crossStart,
            children: [
              TitleSubTitleWidget(
                title: title,
                subTitle: subTitle,
                subTitleFontSize: Dimensions.headingTextSize6,
                titleFontSize: Dimensions.headingTextSize4,
                subTitleColor: CustomColor.secondaryWhiteColor,
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: Dimensions.paddingSize * 0.65),
                    child: CustomImageWidget(
                      path: Assets.icons.ellipse30,
                      height: Dimensions.heightSize * 0.6,
                      width: Dimensions.widthSize * 0.7,
                    ),
                  ),
                  horizontalSpace(Dimensions.marginSizeHorizontal * 0.2),
                  TitleSubTitleWidget(
                    title: title2,
                    subTitle: subTitle,
                    subTitleFontSize: Dimensions.headingTextSize6,
                    titleFontSize: Dimensions.headingTextSize6,
                    titleColor: CustomColor.primaryDarkColor,
                    subTitleColor:
                        CustomColor.secondaryDarkColor.withOpacity(0.80),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
