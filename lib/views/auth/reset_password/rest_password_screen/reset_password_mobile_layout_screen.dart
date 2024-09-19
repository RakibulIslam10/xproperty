import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../language/language.dart';
import '../../../../routes/routes.dart';
import '../../../../widgets/common/buttons/primary_button.dart';
import '../../../../widgets/common/inputs/my_input_filed.dart';
import '../../../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../../../widgets/custom_circular_container_widget.dart';
import '../../../utils/custom_color.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/size.dart';

class ResetPasswordMobileLayoutScreen extends StatelessWidget {
  const ResetPasswordMobileLayoutScreen({super.key});

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
            children: [
              _passwordFieldWidget(),
              _resetPasswordButtonWidget(),
            ],
          ),
        ),
        _circularContainers(),
      ],
    );
  }

  _passwordFieldWidget() {
    return Column(
      children: [
        const MyInputFiled(
            suffixIcon: Icons.visibility_off, label: Strings.newPassword),
        verticalSpace(Dimensions.marginSizeVertical * 0.5),
        const MyInputFiled(
          label: Strings.confirmPassword,
          suffixIcon: Icons.visibility_off,
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

  _resetPasswordButtonWidget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 2),
      child: PrimaryButton(
        fontWeight: FontWeight.bold,
        title: Strings.resetPassword2,
        fontSize: Dimensions.headingTextSize2,
        buttonTextColor: CustomColor.whiteColor,
        buttonColor: CustomColor.primaryLightColor,
        radius: Dimensions.radius * 22,
        borderColor: Colors.transparent,
        onPressed: () {
          Get.toNamed(Routes.confirmScreen);
        },
      ),
    );
  }

  _appBarWidget() {
    return AppBar(
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.heightSize * 0.6),
          child: TitleHeading2Widget(
            text: Strings.yourIdentityHasBeenVerified,
            fontSize: Dimensions.headingTextSize5,
            fontWeight: FontWeight.w500,
            color: CustomColor.primaryLightColor.withOpacity(0.80),
          )),
      automaticallyImplyLeading: false,
      backgroundColor: CustomColor.whiteColor,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize * 0.5),
        child: const TitleHeading2Widget(
          text: Strings.resetPassword,
          color: CustomColor.primaryLightColor,
        ),
      ),
    );
  }
}
