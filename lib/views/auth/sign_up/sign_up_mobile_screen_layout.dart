import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/custom_app_Bar.dart';
import '../../../controller/password_visibility/password_visibility_controller.dart';
import '../../../language/language.dart';
import '../../../routes/routes.dart';
import '../../../widgets/common/buttons/primary_button.dart';
import '../../../widgets/common/inputs/my_input_filed.dart';
import '../../../widgets/common/others/custom_image_widget.dart';
import '../../../widgets/common/text_lebels/title_heading1_widget.dart';
import '../../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../../widgets/common/text_lebels/title_heading4_widget.dart';
import '../../../widgets/common/others/custom_circular_container_widget.dart';
import '../../../widgets/common/others/custom_paint_widget.dart';
import '../../res/assets_res.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class SignUpMobileScreenLayout extends StatelessWidget {
  SignUpMobileScreenLayout({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final _controller = PasswordVisibilityController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Strings.signUp2),
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNabBarWidget(),
    );
  }

  _bodyWidget() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _logoWidget(),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      MyInputFiled(
                        label: Strings.username,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return Strings.userNameIsRequired;
                          }
                          return null;
                        },
                      ),
                      MyInputFiled(
                        label: Strings.email,
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
                      ),
                      Obx(
                        () => MyInputFiled(
                          suffixIcon: InkWell(
                            onTap: () {
                              _controller.isPasswordHidden.value =
                                  !_controller.isPasswordHidden.value;
                            },
                            splashColor: Colors.transparent,
                            child: Icon(
                              _controller.isPasswordHidden.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: CustomColor.secondaryLightColor,
                              size: Dimensions.heightSize * 1.3,
                            ),
                          ),
                          isObscure: _controller.isPasswordHidden.value,
                          label: Strings.password,

                        ),
                      )
                    ],
                  ),
                ),
                _privacyPolicyTextWidget(),
                verticalSpace(Dimensions.heightSize * 3.5),
                _buttonWidget(),
              ],
            ),
          ),
        ),
        _circularContainers(),
      ],
    );
  }

  _bottomNabBarWidget() {
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

  _buttonWidget() {
    return Column(
      children: [
        PrimaryButton(
          fontWeight: FontWeight.bold,
          title: Strings.signUp,
          fontSize: Dimensions.headingTextSize2,
          buttonTextColor: CustomColor.whiteColor,
          buttonColor: CustomColor.primaryLightColor,
          radius: Dimensions.radius * 22,
          borderColor: Colors.transparent,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Get.toNamed(Routes.emailVerificationScreen);
            }
          },
        ),
        verticalSpace(Dimensions.heightSize),
        _alreadyHaveAnAccountTextWidget(),
      ],
    );
  }

  _alreadyHaveAnAccountTextWidget() {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        TitleHeading2Widget(
          fontWeight: FontWeight.w500,
          text: Strings.alreadyHaveAnAccount,
          fontSize: Dimensions.headingTextSize4,
          color: CustomColor.primaryLightColor.withOpacity(0.60),
        ),
        horizontalSpace(Dimensions.widthSize),
        GestureDetector(
          onTap: () {
            Get.offAllNamed(Routes.signInScreen);
          },
          child: const TitleHeading4Widget(
            text: Strings.signIn,
            fontWeight: FontWeight.bold,
            color: CustomColor.primaryLightColor,
          ),
        ),
      ],
    );
  }

  _privacyPolicyTextWidget() {
    return TitleHeading2Widget(
      fontWeight: FontWeight.w500,
      text: Strings.byUsingAppYouAgreeToOurPrivacyPolicy,
      fontSize: Dimensions.headingTextSize5,
      color: CustomColor.primaryLightColor.withOpacity(0.60),
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSize),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          CustomImageWidget(
            path: AssetsRes.appLogo,
            width: Dimensions.widthSize * 5,
            height: Dimensions.heightSize * 4.2,
          ),
          horizontalSpace(Dimensions.marginSizeHorizontal * 0.5),
          Column(
            children: [
              TitleHeading1Widget(
                text: Strings.appName,
                fontSize: Dimensions.headingTextSize3,
                color: CustomColor.primaryLightColor,
              ),
              TitleHeading1Widget(
                text: Strings.findYourNook,
                color: CustomColor.secondaryLightColor,
                fontWeight: FontWeight.bold,
                fontSize: Dimensions.headingTextSize6,
                textAlign: TextAlign.center,
              )
            ],
          )
        ],
      ),
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
          top: 85,
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
