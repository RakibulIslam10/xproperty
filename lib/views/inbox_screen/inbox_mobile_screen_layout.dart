import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/routes/routes.dart';
import 'package:xpropertyapp/views/utils/size.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class InboxMobileScreenLayout extends StatelessWidget {
  const InboxMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MyDrawerMenu(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.heightSize),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return _listCardWidget();
        },
      ),
    );
  }

  _listCardWidget() {
    return ListTile(
      onTap: () {
        Get.toNamed(Routes.chatScreen);
      },
      leading: _logoWidget(),
      title: TitleHeading2Widget(
        text: Strings.startingPrice,
        fontSize: Dimensions.headingTextSize3,
      ),
      subtitle: Row(
        children: [
          TitleHeading2Widget(
            text: "What's the status of your work",
            fontWeight: FontWeight.normal,
            fontSize: Dimensions.headingTextSize5,
            color: CustomColor.greyColor,
          ),
        ],
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
