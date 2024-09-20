import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../custom_assets/assets.gen.dart';
import '../../../language/language.dart';
import '../../../routes/routes.dart';
import '../../../widgets/common/appbar/back_button.dart';
import '../../../widgets/common/buttons/primary_button.dart';
import '../../../widgets/common/inputs/my_input_filed.dart';
import '../../../widgets/common/others/custom_image_widget.dart';
import '../../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../../widgets/common/text_lebels/title_heading4_widget.dart';
import '../../../widgets/common/title_sub_title_widget.dart';
import '../../../widgets/custom_circular_container_widget.dart';
import '../../../widgets/custom_paint_widget.dart';
import '../../res/assets_res.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class SignInMobileScreenLayout extends StatelessWidget {
  const SignInMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavBarWidget(),
    );
  }

  _bodyWidget() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSize,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _logoWidget(),
                _textFieldWidget(),
                _threeButtonWidget(),
              ],
            ),
          ),
        ),
        _circularContainers(),
      ],
    );
  }

  _bottomNavBarWidget() {
    return Stack(
      children: [
        Transform.scale(
          scale: 1.2, // Adjust the scale factor as needed
          child: CustomPaint(
            size: const Size(360, 101.831),
            painter: RPSCustomPainter(),
          ),
        ),
        const CustomCircularContainer(
          top: 45,
          left: 150,
          size: 35,
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
          top: 450,
          left: 250,
          size: 37,
        ),
        CustomCircularContainer(
          top: 680,
          left: 40,
          size: 21,
        ),
        CustomCircularContainer(
          top: 390,
          left: 70,
          size: 25,
        ),
      ],
    );
  }

  _threeButtonWidget() {
    return Column(
      children: [
        _signInButton(),
        _textWidget(),
        verticalSpace(Dimensions.marginSizeVertical * 1.5),
        _googleSignInButton(),
        verticalSpace(Dimensions.marginSizeVertical * 0.5),
        _facebookSignInButton(),
      ],
    );
  }

  _facebookSignInButton() {
    return Stack(
      children: [
        PrimaryButton(
          fontWeight: FontWeight.bold,
          title: Strings.signUpInWithFacebook,
          fontSize: Dimensions.headingTextSize3,
          buttonTextColor: CustomColor.whiteColor,
          buttonColor: CustomColor.secondaryLightColor,
          radius: Dimensions.radius * 22,
          borderColor: Colors.transparent,
          onPressed: () {
            Get.toNamed(Routes.navigationScreen);
          },
        ),
        Positioned(
            top: 5,
            bottom: 5,
            left: 2,
            child: CircleAvatar(
              backgroundColor: CustomColor.whiteColor,
              radius: Dimensions.iconSizeLarge,
              child: CustomImageWidget(
                path: Assets.icons.facebook.path,
                height: Dimensions.iconSizeLarge,
                width: Dimensions.iconSizeLarge, // Adjust width as needed
              ),
            ))
      ],
    );
  }

  _googleSignInButton() {
    return Stack(
      children: [
        PrimaryButton(
          fontWeight: FontWeight.bold,
          title: Strings.signUpInWithGoogle,
          fontSize: Dimensions.headingTextSize3,
          buttonTextColor: CustomColor.whiteColor,
          buttonColor: CustomColor.secondaryLightColor,
          radius: Dimensions.radius * 22,
          borderColor: Colors.transparent,
          onPressed: () {
            Get.toNamed(Routes.navigationScreen);
          },
        ),
        Positioned(
            top: 5,
            bottom: 5,
            left: 2,
            child: CircleAvatar(
              backgroundColor: CustomColor.whiteColor,
              radius: Dimensions.iconSizeLarge,
              child: CustomImageWidget(
                path: Assets.icons.google.path,
                height: Dimensions.iconSizeLarge,
                width: Dimensions.iconSizeLarge, // Adjust width as needed
              ),
            ))
      ],
    );
  }

  _textWidget() {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        TitleHeading2Widget(
          fontWeight: FontWeight.normal,
          text: Strings.dontHaveAnAccount,
          fontSize: Dimensions.headingTextSize4,
          color: CustomColor.primaryLightColor.withOpacity(0.60),
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal * 0.4),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.signUpScreen);
          },
          child: const TitleHeading4Widget(
            text: Strings.signUp,
            fontWeight: FontWeight.bold,
            color: CustomColor.primaryLightColor,
          ),
        ),
      ],
    );
  }

  _signInButton() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.marginSizeVertical * 1.6,
          bottom: Dimensions.marginSizeVertical * 0.5),
      child: PrimaryButton(
        fontWeight: FontWeight.bold,
        title: Strings.signIn,
        fontSize: Dimensions.headingTextSize2,
        buttonTextColor: CustomColor.whiteColor,
        buttonColor: CustomColor.primaryLightColor,
        radius: Dimensions.radius * 22,
        borderColor: Colors.transparent,
        onPressed: () {
          Get.toNamed(Routes.navigationScreen);
        },
      ),
    );
  }

  _textFieldWidget() {
    return Column(
      crossAxisAlignment: crossEnd,
      children: [
        const MyInputFiled(label: Strings.email),
        const MyInputFiled(
            suffixIcon: Icons.visibility_off, label: Strings.password),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.forgotPasswordScreen);
          },
          child: TitleHeading2Widget(
            fontWeight: FontWeight.w400,
            text: Strings.forgotPassword,
            fontSize: Dimensions.headingTextSize4,
            color: CustomColor.primaryLightColor,
          ),
        )
      ],
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Dimensions.paddingSize, top: Dimensions.paddingSize),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          CustomImageWidget(
            path: AssetsRes.appLogo,
            width: Dimensions.widthSize * 4.9,
            height: Dimensions.heightSize * 4.2,
          ),
          horizontalSpace(Dimensions.marginSizeHorizontal * 0.5),
          Column(
            children: [
              TitleSubTitleWidget(
                fontWeight: FontWeight.w500,
                subTitleFonWeight: FontWeight.bold,
                subTitleFontSize: Dimensions.headingTextSize6,
                titleFontSize: Dimensions.headingTextSize3,
                title: Strings.appName,
                subTitle: Strings.findYourNook,
                titleColor: CustomColor.primaryLightColor.withOpacity(0.90),
                subTitleColor: CustomColor.secondaryLightColor,
              )
            ],
          )
        ],
      ),
    );
  }

  _appBarWidget() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: mainStart,
        children: [
          const BackButtonWidget(),
          horizontalSpace(Dimensions.marginSizeHorizontal),
          const TitleHeading2Widget(
            text: Strings.signIn2,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
    );
  }
}
