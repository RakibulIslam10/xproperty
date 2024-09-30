import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/text_lebels/title_heading4_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class NewsMobileLayoutScreen extends StatelessWidget {
  const NewsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Column(
      mainAxisAlignment: mainStart,
      children: [
        Stack(
          children: [
            _imageAndTitleWidget(),
            _backButtonAndTitleWidget(),
          ],
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
            child: const TitleHeading4Widget(text: Strings.description))
      ],
    );
  }

  _backButtonAndTitleWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.paddingSize * 3, left: Dimensions.paddingSize),
      child: Column(
        mainAxisAlignment: mainSpaceBet,
        crossAxisAlignment: crossStart,
        children: [
          _backButtonWidget(),
          verticalSpace(Dimensions.marginSizeVertical * 2),
          TitleSubTitleWidget(
            titleFontSize: Dimensions.headingTextSize3,
            subTitleFontSize: Dimensions.headingTextSize6,
            title: Strings.rangoHouse,
            titleColor: CustomColor.whiteColor,
            subTitle: Strings.newYorkUasUSA,
            subTitleColor: CustomColor.whiteColor.withOpacity(0.70),
          ),
          TitleHeading4Widget(
            fontSize: Dimensions.headingTextSize6,
            text: "Post on: 10 Mar 2022",
            color: CustomColor.whiteColor,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }

  _imageAndTitleWidget() {
    return Padding(
        padding: EdgeInsets.only(bottom: Dimensions.heightSize),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(Dimensions.radius * 2),
              bottomLeft: Radius.circular(Dimensions.radius * 2)),
          child: Stack(
            children: [
              CustomImageWidget(
                path: Assets.background.house.path,
                height: Dimensions.heightSize * 17.5,
                width: double.infinity,
              ),
              Container(
                height: Dimensions.heightSize * 17.5,
                width: double.infinity,
                color: Colors.black.withOpacity(0.35), // Adjust opacity here
              ),
            ],
          ),
        ));
  }

  _backButtonWidget() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: CustomColor.primaryDarkColor.withOpacity(0.30),
          radius: Dimensions.radius * 1.25,
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              Get.back();
            },
            child: CustomImageWidget(
              path: Assets.icons.backArrow,
              height: Dimensions.iconSizeDefault * 0.9,
            ),
          ),
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal * 0.5),
        const TitleHeading2Widget(
          text: Strings.news,
          color: CustomColor.whiteColor,
        ),
      ],
    );
  }
}
