import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../language/language.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/text_lebels/title_heading4_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/custom_circular_container_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class AboutUsMobileLayoutScreen extends StatelessWidget {
  const AboutUsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  _appBarWidget() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: CustomColor.whiteColor,
      title: Row(
        mainAxisAlignment: mainStart,
        children: [
          BackButtonWidget(onTap: () {
            Get.back();
          }),
          horizontalSpace(Dimensions.marginSizeHorizontal),
          TitleHeading2Widget(
            text: Strings.aboutUs,
            fontSize: Dimensions.headingTextSize2 * 1.2,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
    );
  }

  _bodyWidget() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize),
          child: Column(
            mainAxisAlignment: mainSpaceBet,
            children: [
              _logoDescriptionWidget(),
              _copyRightTextWidget(),
            ],
          ),
        ),
        _circularContainers()
      ],
    );
  }

  _circularContainers() {
    return const Stack(
      children: [
        CustomCircularContainer(
          top: 100,
          left: -10,
          size: 25,
        ),
        CustomCircularContainer(
          top: 90,
          left: 370,
          size: 45,
        ),
        CustomCircularContainer(
          top: 200,
          left: 250,
          size: 22,
        ),
        CustomCircularContainer(
          top: 680,
          left: 40,
          size: 21,
        ),
        CustomCircularContainer(
          top: 490,
          left: 250,
          size: 37,
        ),
        CustomCircularContainer(
          top: 390,
          left: 70,
          size: 25,
        ),
      ],
    );
  }

  _copyRightTextWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical),
      child: TitleSubTitleWidget(
          subTitleColor: CustomColor.primaryDarkColor,
          isCenterText: true,
          subTitleFonWeight: FontWeight.bold,
          subTitleFontSize: Dimensions.headingTextSize5,
          titleFontSize: Dimensions.headingTextSize3,
          title: Strings.copyRightText,
          subTitle: Strings.xPropertyWeblink),
    );
  }

  _logoDescriptionWidget() {
    return Column(
      children: [
        CustomImageWidget(
          path: AssetsRes.appLogo,
          height: Dimensions.heightSize * 9.6,
          width: Dimensions.widthSize * 11,
        ),
        TitleSubTitleWidget(
          isCenterText: true,
          subTitleFontSize: Dimensions.headingTextSize5,
          title: Strings.appName,
          subTitle: Strings.findYourNook,
          titleFontSize: Dimensions.headingTextSize3 * 1.015,
          subTitleFonWeight: FontWeight.bold,
          fontWeight: FontWeight.w500,
          titleColor: CustomColor.primaryLightColor.withOpacity(0.90),
          subTitleColor: CustomColor.secondaryLightColor,
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimensions.marginSizeVertical),
          child: const TitleHeading4Widget(
            text: Strings.description,
            color: CustomColor.primaryDarkColor,
          ),
        ),
      ],
    );
  }
}
