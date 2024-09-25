import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/background_widget/background_widget.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class WelcomeHomeMobileScreenLayout extends StatelessWidget {
  const WelcomeHomeMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return BackgroundWidget(
      backgroundImg: AssetsRes.background,
      content: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSize,
            vertical: Dimensions.paddingSize),
        child: Column(
          mainAxisAlignment: mainCenter,
          crossAxisAlignment: crossStart,
          children: [
            _titleSubTitleWidget(),
            verticalSpace(Dimensions.marginSizeVertical * 8.5),
            _twoButtonWidget(),
          ],
        ),
      ),
    );
  }

  _twoButtonWidget() {
    return Column(
      children: [
        PrimaryButton(
          fontWeight: FontWeight.bold,
          title: Strings.signIn,
          fontSize: Dimensions.headingTextSize2,
          buttonTextColor: CustomColor.primaryDarkColor,
          buttonColor: CustomColor.whiteColor.withOpacity(0.50),
          radius: Dimensions.radius * 22,
          borderColor: Colors.transparent,
          onPressed: () {
            Get.offAllNamed(Routes.signInScreen);
          },
        ),
        verticalSpace(Dimensions.heightSize),
        PrimaryButton(
          fontWeight: FontWeight.bold,
          title: Strings.signUp,
          fontSize: Dimensions.headingTextSize2,
          buttonTextColor: CustomColor.whiteColor,
          buttonColor: CustomColor.primaryDarkColor.withOpacity(0.5),
          radius: Dimensions.radius * 22,
          borderColor: Colors.transparent,
          onPressed: () {
            Get.offAllNamed(Routes.signUpScreen);
          },
        ),
      ],
    );
  }

  _titleSubTitleWidget() {
    return TitleSubTitleWidget(
      title: Strings.helloThere,
      titleColor: CustomColor.whiteColor.withOpacity(1.00),
      subTitleColor: CustomColor.whiteColor.withOpacity(0.90),
      subTitle: Strings.findYourNookInYourFavoritePlace,
    );
  }
}
