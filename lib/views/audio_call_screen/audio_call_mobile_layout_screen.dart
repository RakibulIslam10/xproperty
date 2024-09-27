import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/background_widget/background_widget.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/profile_picture_status_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class AudioCallMobileLayoutScreen extends StatelessWidget {
  const AudioCallMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
      extendBodyBehindAppBar: true,
    );
  }

  _bodyWidget() {
    return BackgroundWidget(
      backgroundImg: AssetsRes.blurImage,
      content: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSize * 0.5,
            vertical: Dimensions.paddingSize * 0.5),
        child: Column(
          mainAxisAlignment: mainCenter,
          crossAxisAlignment: crossCenter,
          children: [
            _logoWidget(),
            verticalSpace(Dimensions.marginSizeVertical * 2.5),
            _redAndBlueButtonWidget()
          ],
        ),
      ),
    );
  }

  _logoWidget() {
    return Column(
      children: [
        verticalSpace(Dimensions.marginSizeVertical * 3),
        Container(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
          width: Dimensions.widthSize * 18.6,
          // Adjust the size as needed
          height: Dimensions.heightSize * 14.5,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: CustomColor.secondaryLightColor,
              width: Dimensions.widthSize,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(Assets.background.personProfile.path))
            ) 
          )
        ),
        verticalSpace(Dimensions.marginSizeVertical),
        const TitleHeading2Widget(
          text: "00:01:50",
          color: CustomColor.whiteColor,
        ),
      ],
    );
  }

  _redAndBlueButtonWidget() {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        CircleAvatar(
          backgroundColor: CustomColor.primaryLightColor,
          radius: Dimensions.radius * 2.4,
          child: CustomImageWidget(
            path: Assets.icons.iconMicrophone,
            height: Dimensions.heightSize * 1.8,
            color: CustomColor.whiteColor,
          ),
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal * 0.6),
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CircleAvatar(
            backgroundColor: CustomColor.redColor,
            radius: Dimensions.radius * 2.4,
            child: CustomImageWidget(
              path: Assets.icons.endCall,
              height: Dimensions.heightSize * 2.5,
              color: CustomColor.whiteColor,
            ),
          ),
        ),
      ],
    );
  }

  _appBarWidget() {
    return AppBar(
      toolbarHeight: Dimensions.heightSize * 5.5,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      actions: [_emailButtonWidget()],
      title: _logoAndTextWidget(),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: CustomColor.primaryLightColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  _logoAndTextWidget() {
    return Row(
      children: [
        const ProfilePictureStatusWidget(),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.marginSizeHorizontal * 0.4),
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              TitleHeading2Widget(
                text: Strings.lomongi,
                color: CustomColor.whiteColor,
                fontSize: Dimensions.headingTextSize3,
              ),
              TitleHeading2Widget(
                text: Strings.businessAccount,
                color: CustomColor.whiteColor.withOpacity(0.80),
                fontWeight: FontWeight.normal,
                fontSize: Dimensions.headingTextSize6,
              ),
            ],
          ),
        )
      ],
    );
  }

  _emailButtonWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSizeHorizontal * 0.5),
      child: IconButton(
          onPressed: () {
            Get.toNamed(Routes.audioCallScreen);
          },
          icon: CustomImageWidget(
            path: Assets.icons.iconMail,
            height: Dimensions.heightSize,
            width: Dimensions.widthSize * 2,
            color: CustomColor.whiteColor,
          )),
    );
  }
}
