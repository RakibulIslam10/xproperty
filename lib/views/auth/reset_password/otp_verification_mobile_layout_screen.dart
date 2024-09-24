import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../language/language.dart';
import '../../../routes/routes.dart';
import '../../../widgets/common/appbar/back_button.dart';
import '../../../widgets/common/buttons/primary_button.dart';
import '../../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../../widgets/custom_circular_container_widget.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class OtpVerificationMobileLayoutScreen extends StatelessWidget {
  const OtpVerificationMobileLayoutScreen({super.key});

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
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSize,
              vertical: Dimensions.paddingSize),
          child: Column(
            children: [
              verticalSpace(Dimensions.marginSizeVertical * 2.5),
              otpTextFieldWidget(),
              _buttonWidget(),
              _otpResendTextWidget(),
            ],
          ),
        ),
        _circularContainers(),
      ],
    );
  }

  _appBarWidget() {
    return AppBar(
      toolbarHeight: Dimensions.heightSize * 5,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: mainStart,
        children: [
          const BackButtonWidget(),
          horizontalSpace(Dimensions.marginSizeHorizontal),
          const TitleHeading2Widget(
            text: Strings.otpVerification,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.heightSize * 0.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
            child: TitleHeading2Widget(
              text: Strings.enterTheCOdeSentTo,
              fontSize: Dimensions.headingTextSize5,
              fontWeight: FontWeight.w500,
              color: CustomColor.primaryLightColor.withOpacity(0.80),
            ),
          )),
    );
  }

  otpTextFieldWidget() {
    return OtpTextField(
      numberOfFields: 4,
      onSubmit: (value) {},
      enabledBorderColor: CustomColor.secondaryLightColor,
      fillColor: CustomColor.secondaryLightColor,
    );
  }

  _otpResendTextWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize),
      child: TitleHeading2Widget(
        text: Strings.otpResend,
        fontSize: Dimensions.headingTextSize3,
        color: CustomColor.primaryLightColor.withOpacity(0.60),
        fontWeight: FontWeight.w500,
      ),
    );
  }

  _buttonWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize * 1.8),
      child: PrimaryButton(
        fontWeight: FontWeight.bold,
        title: Strings.confirm,
        fontSize: Dimensions.headingTextSize2,
        buttonTextColor: CustomColor.whiteColor,
        buttonColor: CustomColor.primaryLightColor,
        radius: Dimensions.radius * 22,
        borderColor: Colors.transparent,
        onPressed: () {
          Get.toNamed(Routes.resetPasswordScreen);
        },
      ),
    );
  }

  _circularContainers() {
    return const Stack(
      children: [
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
