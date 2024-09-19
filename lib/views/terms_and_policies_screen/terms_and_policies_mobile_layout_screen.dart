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

class TermsAndPoliciesMobileLayoutScreen extends StatelessWidget {
  const TermsAndPoliciesMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
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
            ],
          ),
        ),
        _circularContainers()
      ],
    );
  }













  _logoDescriptionWidget() {
    return Column(
      children: [
        CustomImageWidget(
          path: AssetsRes.appLogo,
          height: Dimensions.heightSize * 10,
          width: double.infinity,
        ),
        TitleSubTitleWidget(
          isCenterText: true,
          subTitleFontSize: Dimensions.headingTextSize2,
          title: Strings.appName,
          subTitle: Strings.findYourNook,
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

  _appBarWidget() {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      leading: BackButtonWidget(onTap: () {
        Get.back();
      }),
      title: TitleHeading2Widget(
        text: Strings.termsAndPolicies,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
    );
  }
}
