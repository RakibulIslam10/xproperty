import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../language/language.dart';
import '../../../routes/routes.dart';
import '../../../widgets/common/appbar/back_button.dart';
import '../../../widgets/common/buttons/primary_button.dart';
import '../../../widgets/common/inputs/my_input_filed.dart';
import '../../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../../widgets/common/others/custom_circular_container_widget.dart';
import '../../utils/custom_color.dart';
import '../../utils/dimensions.dart';
import '../../utils/size.dart';

class ForgotPasswordMobileLayoutScreen extends StatelessWidget {
  ForgotPasswordMobileLayoutScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
          child: _textFormField(),
        ),
        _circularContainers()
      ],
    );
  }

  _textFormField() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          verticalSpace(Dimensions.marginSizeVertical * 2.5),
          MyInputFiled(
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
              label: Strings.email),
          _sendButtonWidget(),
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

  _sendButtonWidget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 1),
      child: PrimaryButton(
        fontWeight: FontWeight.bold,
        title: Strings.sendNow,
        fontSize: Dimensions.headingTextSize2 * 1,
        buttonTextColor: CustomColor.whiteColor,
        buttonColor: CustomColor.primaryLightColor,
        radius: Dimensions.radius * 22,
        borderColor: Colors.transparent,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            Get.toNamed(Routes.otpVerificationScreen);
          }
        },
      ),
    );
  }

  _appBarWidget() {
    return AppBar(
      toolbarHeight: Dimensions.heightSize * 7,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: mainStart,
        children: [
          const BackButtonWidget(),
          horizontalSpace(Dimensions.marginSizeHorizontal),
          const TitleHeading2Widget(
            text: Strings.forgotPassword2,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.heightSize * 0.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
            child: TitleHeading2Widget(
              text: Strings.pleaseEnterYourEmailText,
              fontSize: Dimensions.headingTextSize5,
              fontWeight: FontWeight.w500,
              color: CustomColor.primaryLightColor.withOpacity(0.80),
            ),
          )),
    );
  }
}
