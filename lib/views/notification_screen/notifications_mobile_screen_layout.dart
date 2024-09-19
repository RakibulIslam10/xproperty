import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class NotificationsMobileScreenLayout extends StatelessWidget {
  const NotificationsMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: _logoWidget(),
          title: TitleHeading2Widget(
            text: "Lomongi follow you",
            color: CustomColor.primaryLightColor,
            fontSize: Dimensions.headingTextSize4,
          ),
          subtitle: TitleHeading2Widget(
            text: "11:28 AM 3/1/2022",
            color: CustomColor.secondaryLightColor,
            fontSize: Dimensions.headingTextSize6,
          ),
          trailing: CustomImageWidget(path: Assets.icons.iconVertical),
        );
      },
    );
  }

  _logoWidget() {
    return CircleAvatar(
      backgroundImage: AssetImage(Assets.logos.profilePicture.path),
      radius: Dimensions.radius * 2,
    );
  }

  _appBarWidget() {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      leading: BackButtonWidget(onTap: () {
        Get.back();
      }),
      title: TitleHeading2Widget(
        text: Strings.notification,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
    );
  }
}
