import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/profile_picture_status_widget.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class InboxMobileScreenLayout extends StatelessWidget {
  const InboxMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(),
      endDrawer: MyDrawerMenu(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.5),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _listCardWidget();
        },
      ),
    );
  }

  _listCardWidget() {
    return ListTileTheme(
      horizontalTitleGap: Dimensions.marginSizeHorizontal * 0.25,
      child: ListTile(
        contentPadding: EdgeInsets.only(
            left: Dimensions.paddingSize * 0.4,
            right: Dimensions.paddingSize * 0.8),
        onTap: () {
          Get.toNamed(Routes.chatScreen);
        },
        leading: const ProfilePictureStatusWidget(),
        title: TitleHeading2Widget(
          text: Strings.startingPrice,
          fontSize: Dimensions.headingTextSize3,
        ),
        subtitle: TitleHeading2Widget(
          text: "What's the status of your work",
          fontWeight: FontWeight.normal,
          fontSize: Dimensions.headingTextSize5,
          color: CustomColor.greyColor,
        ),
        trailing: Column(
          mainAxisAlignment: mainEnd,
          children: [
            CustomImageWidget(
              path: Assets.logos.man.path,
              height: Dimensions.heightSize * 1.1,
              width: Dimensions.widthSize * 1.1,
            )
          ],
        ),
      ),
    );
  }
}
