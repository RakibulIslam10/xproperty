import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/widgets/common/text_lebels/title_heading4_widget.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class NewsMobileLayoutScreen extends StatelessWidget {
  const NewsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _bodyWidget(),
      ),
    );
  }

  _bodyWidget() {
    return Column(
      children: [
        Stack(
          children: [
            _imageAndTitleWidget(),
            Padding(
              padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
              child: _backButtonAndTitleWidget(),
            ),
          ],
        ),
        const TitleHeading4Widget(text: Strings.description)
      ],
    );
  }

  _backButtonAndTitleWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        _backButtonWidget(),
        verticalSpace(Dimensions.marginSizeVertical * 3.5),
        TitleSubTitleWidget(
          title: Strings.rangoHouse,
          titleColor: CustomColor.whiteColor,
          subTitle: Strings.newYorkUasUSA,
          subTitleColor: CustomColor.whiteColor.withOpacity(0.80),
        ),
      ],
    );
  }

  _imageAndTitleWidget() {
    return Padding(
        padding: EdgeInsets.only(bottom: Dimensions.heightSize),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensions.radius * 1.5),
            bottomRight: Radius.circular(Dimensions.radius * 1.5),
          ),
          child: CustomImageWidget(
            path: Assets.background.house.path,
            color: Colors.black.withOpacity(0.20),
            height: Dimensions.heightSize * 17,
            width: double.infinity,
          ),
        ));
  }

  _backButtonWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
      child: CircleAvatar(
        backgroundColor: CustomColor.primaryDarkColor.withOpacity(0.30),
        radius: Dimensions.radius * 1.6,
        child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: CustomImageWidget(
            path: Assets.icons.backArrow,
            height: Dimensions.iconSizeDefault * 0.9,
          ),
        ),
      ),
    );
  }
}
