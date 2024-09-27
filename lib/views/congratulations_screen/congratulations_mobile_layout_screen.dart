import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/common/others/custom_circular_container_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class CongratulationsMobileLayoutScreen extends StatelessWidget {
  const CongratulationsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: crossCenter,
              mainAxisAlignment: mainCenter,
              children: [
                _imageWidget(),
                _titleSubTitleWidget(),
                verticalSpace(Dimensions.heightSize * 3.5),
                _buttonWidget(),
              ],
            ),
          ),
        ),
        _circularContainers()
      ],
    );
  }

  _buttonWidget() {
    return PrimaryButton(
      fontWeight: FontWeight.bold,
      title: Strings.ok,
      fontSize: Dimensions.headingTextSize2,
      buttonTextColor: CustomColor.whiteColor,
      buttonColor: CustomColor.primaryLightColor,
      radius: Dimensions.radius * 22,
      borderColor: Colors.transparent,
      onPressed: () {
        Get.offAllNamed(Routes.navigationScreen);
      },
    );
  }

  _titleSubTitleWidget() {
    return TitleSubTitleWidget(
      isCenterText: true,
      title: Strings.congratulation,
      subTitle: Strings.yourAccountHasBeenSuccessfullyVerified,
      subTitleColor: CustomColor.primaryLightColor.withOpacity(0.70),
      titleColor: CustomColor.primaryLightColor.withOpacity(0.90),
    );
  }

  _imageWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize * 3),
      child: CustomImageWidget(
        path: Assets.background.congratulations.path,
        width: double.infinity,
        height: Dimensions.heightSize * 20,
      ),
    );
  }

  _circularContainers() {
    return const Stack(
      children: [
        CustomCircularContainer(
          top: 150,
          left: 250,
          size: 22,
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
}
