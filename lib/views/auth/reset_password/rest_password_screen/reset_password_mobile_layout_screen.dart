import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/password_visibility/password_visibility_controller.dart';
import '../../../../language/language.dart';
import '../../../../routes/routes.dart';
import '../../../../widgets/common/buttons/primary_button.dart';
import '../../../../widgets/common/inputs/my_input_filed.dart';
import '../../../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../../../widgets/common/others/custom_circular_container_widget.dart';
import '../../../utils/custom_color.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/size.dart';

class ResetPasswordMobileLayoutScreen extends StatelessWidget {
  ResetPasswordMobileLayoutScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _controller = PasswordVisibilityController();


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
          child: SingleChildScrollView(
            child: Column(
              children: [
                verticalSpace(Dimensions.marginSizeVertical * 2.5),
                _passwordFieldWidget(),
                _resetPasswordButtonWidget(),
              ],
            ),
          ),
        ),
        _circularContainers(),
      ],
    );
  }

  _passwordFieldWidget() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          MyInputFiled(
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
                ),),
              isObscure: _controller.isPasswordHidden.value,
              label: Strings.newPassword),
         Obx(() =>  MyInputFiled(
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
             ),),
           isObscure: _controller.isPasswordHidden.value,
           label: Strings.confirmPassword,

         ),)
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
          if (_formKey.currentState!.validate()) {
            Get.toNamed(Routes.confirmScreen);
          }
        },
      ),
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
          horizontalSpace(Dimensions.marginSizeHorizontal),
          const TitleHeading2Widget(
            text: Strings.resetPassword2,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.heightSize * 0.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
            child: TitleHeading2Widget(
              text: Strings.yourIdentityHasBeenVerified,
              fontSize: Dimensions.headingTextSize5,
              fontWeight: FontWeight.w500,
              color: CustomColor.primaryLightColor.withOpacity(0.80),
            ),
          )),
    );
  }
}
