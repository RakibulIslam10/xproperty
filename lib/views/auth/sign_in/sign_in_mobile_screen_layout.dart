import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/custom_app_bar.dart';
import '../../../custom_assets/assets.gen.dart';
import '../../../language/language.dart';
import '../../../routes/routes.dart';
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
  SignInMobileScreenLayout({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Strings.signIn2),
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavBarWidget(),
    );
  }

  _bodyWidget() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSize * 0.8,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _logoWidget(),
                _inputFormFieldWidget(),
                _singInButton(),
                _twoButtonWidget(),
              ],
            ),
          ),
        ),
        _circularContainers(),
      ],
    );
  }

  _inputFormFieldWidget() {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: crossEnd,
        children: [
          MyInputFiled(
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return Strings.emailIsRequired;
              }
              final emailRegExp = RegExp(
                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?\.[a-zA-Z][a-zA-Z0-9]+$");
              if (!emailRegExp.hasMatch(value)) {
                return Strings.pleaseEnterAValidEmail;
              }
              return null;
            },
            label: Strings.email,
          ),
          MyInputFiled(
            isObscure: true,
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return Strings.passwordRequired;
              }

              if (value.length < 6) {
                return Strings.passwordTooShort;
              }
              return null;
            },
            label: Strings.password,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.forgotPasswordScreen);
            },
            child: TitleHeading2Widget(
              text: Strings.forgotPassword,
              fontSize: Dimensions.headingTextSize5,
              color: CustomColor.primaryLightColor,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  _singInButton() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.marginSizeVertical * 1.8,
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
            if (formKey.currentState!.validate()) {
              Get.offAllNamed(Routes.navigationScreen);
            }
          }),
    );
  }

  _bottomNavBarWidget() {
    return Stack(
      children: [
        Transform.scale(
          scale: 1.2, // Adjust the scale factor as needed
          child: CustomPaint(
            size: const Size(360, 95.831),
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
          top: 0,
          left: -8,
          size: 25,
        ),
        CustomCircularContainer(
          top: 0,
          left: 370,
          size: 40,
        ),
      ],
    );
  }

  _twoButtonWidget() {
    return Column(
      children: [
        _textWidget(),
        verticalSpace(Dimensions.marginSizeVertical * 2),
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
          onPressed: () {},
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
          onPressed: () {},
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

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Dimensions.paddingSize, top: Dimensions.paddingSize * 0.5),
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
}
