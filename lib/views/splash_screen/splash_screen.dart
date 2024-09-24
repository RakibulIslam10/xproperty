import 'package:flutter/material.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Column(
      children: [
        _logoWidget(),
        _titleSubTitleWidget(),
      ],
    );
  }

  _titleSubTitleWidget() {
    return TitleSubTitleWidget(
      isCenterText: true,
      titleFontSize: Dimensions.headingTextSize1 * 1.33,
      subTitleFontSize: Dimensions.headingTextSize2,
      fontWeight: FontWeight.w500,
      subTitleFonWeight: FontWeight.bold,
      title: Strings.appName,
      subTitle: Strings.findYourNook,
      titleColor: CustomColor.primaryLightColor,
      subTitleColor: CustomColor.secondaryLightColor.withOpacity(0.60),
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.marginSizeVertical * 4.5),
      child: CustomImageWidget(
        path: AssetsRes.appLogo,
        height: Dimensions.heightSize * 17.41,
        width: double.infinity,
      ),
    );
  }
}
