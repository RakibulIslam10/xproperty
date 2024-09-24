import 'package:flutter/material.dart';
import 'package:xproperty/widgets/custom_app_bar.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
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
      appBar: const CustomAppBar(
          statusBarColor: CustomColor.primaryLightColor,
          title: Strings.termsAndPolicies),
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
          height: Dimensions.heightSize * 9.5,
          width: double.infinity,
        ),
        TitleSubTitleWidget(
          isCenterText: true,
          titleFontSize: Dimensions.headingTextSize3,
          subTitleFontSize: Dimensions.headingTextSize6,
          title: Strings.appName,
          subTitle: Strings.findYourNook,
          subTitleFonWeight: FontWeight.bold,
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
}
