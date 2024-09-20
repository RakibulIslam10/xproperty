import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../custom_assets/assets.gen.dart';
import '../language/language.dart';
import '../routes/routes.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/others/custom_image_widget.dart';
import 'common/title_sub_title_widget.dart';

class PrimaryAppBar extends StatefulWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
  });

  @override
  State<PrimaryAppBar> createState() => _PrimaryAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(Dimensions.heightSize * 5);
}

class _PrimaryAppBarState extends State<PrimaryAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.4),
      child: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: CustomColor.whiteColor,
        titleSpacing: Dimensions.heightSize * 0.6,
        toolbarHeight: Dimensions.heightSize * 5,
        leadingWidth: Dimensions.widthSize * 7,
        leading: _logoWidget(),
        title: _appBarTitleSubTitleWidget(),
        actions: [
          _actionButton(),
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: CustomColor.primaryLightColor,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
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
        titleFontSize: Dimensions.headingTextSize3 * 1.1,
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
