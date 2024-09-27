import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/navigation/navigation_controller.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/common/others/custom_dower_items_list_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class MyDrawerMenu extends StatelessWidget {
  MyDrawerMenu({super.key});

  final _navBarController = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: CustomColor.whiteColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossCenter,
            children: [
              _logoWidget(),
              _titleAndSubTitleWidget(),
              _dowerItemsList(),
            ],
          ),
        ),
      ),
    );
  }

  _dowerItemsList() {
    return Column(
      children: [
        CustomDowerItemsListWidget(
          onTap: () {
            _navBarController.backToHome();
            Get.back();
          },
          iconPath: Assets.icons.home,
          text: Strings.home,
          backgroundColor: CustomColor.secondaryLightColor,
        ),
        CustomDowerItemsListWidget(
          onTap: () {
            Get.toNamed(Routes.addPropertyScreen);
          },
          iconPath: Assets.icons.buildin,
          text: Strings.addProperty,
          backgroundColor: CustomColor.whiteColor,
        ),
        CustomDowerItemsListWidget(
          onTap: () {
            Get.toNamed(Routes.agentsScreen);
          },
          iconPath: Assets.icons.iconPeople,
          text: Strings.agents,
          backgroundColor: CustomColor.whiteColor,
        ),
        CustomDowerItemsListWidget(
          onTap: () {
            Get.toNamed(Routes.newsBlogScreen);
          },
          iconPath: Assets.icons.iconNewspap,
          text: Strings.newsANdBlog,
          backgroundColor: CustomColor.whiteColor,
        ),
        CustomDowerItemsListWidget(
            onTap: () {
              Get.toNamed(Routes.aboutUSScreen);
            },
            iconPath: Assets.icons.iconInfor,
            text: Strings.aboutUs,
            backgroundColor: CustomColor.whiteColor),
        CustomDowerItemsListWidget(
            onTap: () {
              Get.toNamed(Routes.contactUsScreen);
            },
            iconPath: Assets.icons.iconHeadphone,
            text: Strings.contactUs,
            backgroundColor: CustomColor.whiteColor),
        CustomDowerItemsListWidget(
            onTap: () {
              Get.toNamed(Routes.termsAndPoliciesScreen);
            },
            iconPath: Assets.icons.iconDocum,
            text: Strings.termsAndPolicies,
            backgroundColor: CustomColor.whiteColor),
        CustomDowerItemsListWidget(
            onTap: () {
              Get.toNamed(Routes.changePasswordScreen);
            },
            iconPath: Assets.icons.iconKey,
            text: Strings.changePassword,
            backgroundColor: CustomColor.whiteColor),
        CustomDowerItemsListWidget(
            onTap: () {
              Get.offAllNamed(Routes.welcomeScreen);
            },
            iconPath: Assets.icons.iconPowerO,
            text: Strings.signOut,
            backgroundColor: CustomColor.whiteColor),
      ],
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.heightSize * 2.5, bottom: Dimensions.heightSize),
      child: CircleAvatar(
        backgroundImage: AssetImage(Assets.background.personProfile.path),
        radius: Dimensions.radius * 4.5,
      ),
    );
  }

  _titleAndSubTitleWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.heightSize * 1.5),
      child: TitleSubTitleWidget(
          isCenterText: true,
          subTitleColor: CustomColor.greyColor,
          titleColor: CustomColor.primaryLightColor,
          title: Strings.alexaConton,
          titleFontSize: Dimensions.headingTextSize3,
          subTitleFontSize: Dimensions.headingTextSize4,
          subTitle: Strings.takefulRealEstate),
    );
  }
}
