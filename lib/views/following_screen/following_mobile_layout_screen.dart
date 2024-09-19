import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/follow_button_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class FollowingMobileLayoutScreen extends StatelessWidget {
  const FollowingMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  _appBarWidget() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: CustomColor.whiteColor,
      title: Row(
        mainAxisAlignment: mainStart,
        children: [
          BackButtonWidget(onTap: () {
            Get.back();
          }),
          horizontalSpace(Dimensions.marginSizeHorizontal),
          TitleHeading2Widget(
            text: Strings.following,
            fontSize: Dimensions.headingTextSize2 * 1.2,
            color: CustomColor.primaryLightColor,
          ),
        ],
      ),
    );
  }

  _bodyWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.marginSizeVertical * 0.2),
          child: ListTile(
              leading: _logoWidget(),
              title: TitleHeading2Widget(
                text: Strings.alexaConton,
                fontSize: Dimensions.headingTextSize4,
              ),
              trailing: CustomButton(onPressed: () {}, text: Strings.follow)),
        );
      },
    );
  }

  _logoWidget() {
    return Stack(
      children: [
        ClipRect(
          child: CustomImageWidget(
              path: Assets.logos.man.path,
              height: Dimensions.heightSize * 4.5,
              width: Dimensions.heightSize * 4.5),
        ),
        Positioned(
          top: 35,
          left: 50,
          child: CustomImageWidget(
            path: Assets.icons.ellipse30,
            height: Dimensions.heightSize * 0.8,
            width: Dimensions.widthSize * 0.9,
          ),
        ),
      ],
    );
  }
}
