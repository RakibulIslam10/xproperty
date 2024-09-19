import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/custom_assets/assets.gen.dart';
import 'package:xpropertyapp/language/language.dart';
import 'package:xpropertyapp/routes/routes.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/widgets/common/others/custom_image_widget.dart';
import 'package:xpropertyapp/widgets/common/title_sub_title_widget.dart';
import '../views/utils/dimensions.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(Dimensions.heightSize * 5);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      titleSpacing: Dimensions.heightSize * 0.6,
      toolbarHeight: Dimensions.heightSize * 5,
      leadingWidth: Dimensions.widthSize * 7,
      leading: _logoWidget(),
      title: _appBarTitleSubTitleWidget(),
      actions: [
        _actionButton(),
      ],
    );
  }

  _logoWidget() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.aboutUSScreen);
      },
      child: Padding(
        padding: EdgeInsets.only(left: Dimensions.widthSize * 1.8),
        child: CustomImageWidget(
          path: Assets.logos.appLogo.path,
          height: Dimensions.heightSize * 5,
          width: Dimensions.widthSize * 5,
        ),
      ),
    );
  }

  _actionButton() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.findMapScreen);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal * 0.4),
            child: CustomImageWidget(
              path: Assets.icons.iconMap,
              height: Dimensions.iconSizeDefault * 1.2,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.notificationScreen);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal * 0.3),
            child: CustomImageWidget(
              path: Assets.icons.iconBell,
              height: Dimensions.iconSizeDefault * 1.2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: Dimensions.marginSizeHorizontal * 0.3,
              right: Dimensions.marginSizeHorizontal),
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: CustomImageWidget(
              path: Assets.icons.iconMenu,
              height: Dimensions.iconSizeDefault * 1,
            ),
          ),
        ),
      ],
    );
  }

  _appBarTitleSubTitleWidget() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.aboutUSScreen);
      },
      child: TitleSubTitleWidget(
        subTitleFonWeight: FontWeight.bold,
        fontWeight: FontWeight.w500,
        titleFontSize: Dimensions.headingTextSize3,
        isCenterText: true,
        title: Strings.appName,
        subTitle: Strings.findYourNook,
        subTitleFontSize: Dimensions.headingTextSize6,
        titleColor: CustomColor.primaryLightColor.withOpacity(1),
        subTitleColor: CustomColor.secondaryLightColor,
      ),
    );
  }
}
