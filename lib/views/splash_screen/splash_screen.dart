import 'package:flutter/material.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';
import 'package:xpropertyapp/widgets/common/others/custom_image_widget.dart';
import 'package:xpropertyapp/widgets/common/title_sub_title_widget.dart';
import '../../language/language.dart';
import '../res/assets_res.dart';
import '../utils/size.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Column(
      mainAxisAlignment: mainCenter,
      children: [
        _logoWidget(),
        _titleSubTitleWidget(),
      ],
    );
  }

  _titleSubTitleWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.65),
      child: TitleSubTitleWidget(
        isCenterText: true,
        titleFontSize: Dimensions.headingTextSize1 * 1.33,
        subTitleFontSize: Dimensions.headingTextSize2,
        fontWeight: FontWeight.w500,
        subTitleFonWeight: FontWeight.bold,
        title: Strings.appName,
        subTitle: Strings.findYourNook,
        titleColor: CustomColor.primaryLightColor,
        subTitleColor: CustomColor.secondaryLightColor.withOpacity(0.65),
      ),
    );
  }

  _logoWidget() {
    return CustomImageWidget(
      path: AssetsRes.appLogo,
      height: Dimensions.heightSize * 17.41,
      width: double.infinity,
    );
  }
}
