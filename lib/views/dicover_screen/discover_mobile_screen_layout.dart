import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/views/drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../../widgets/custom_circular_container_widget.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class DiscoverMobileScreenLayout extends StatelessWidget {
  const DiscoverMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MyDrawerMenu(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Stack(
      children: [
        _circularContainers(),
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
          child: ListView.builder(
            itemCount: ListCustomDataList.productsDetails2.length,
            itemBuilder: (context, index) {
              final myData = ListCustomDataList.productsDetails2[index];
              return _listCardWidget(myData);
            },
          ),
        ),
      ],
    );
  }

  _circularContainers() {
    return const Stack(
      children: [
        CustomCircularContainer(
          top: 0,
          left: -10,
          size: 25,
        ),
        CustomCircularContainer(
          top: 0,
          left: 375,
          size: 30,
        ),
        CustomCircularContainer(
          top: 490,
          left: 370,
          size: 37,
        ),
        CustomCircularContainer(
          top: 350,
          left: 150,
          size: 50,
        ),
      ],
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.widthSize * 1.8),
      child: CustomImageWidget(
        path: Assets.logos.appLogo.path,
        height: Dimensions.heightSize * 5,
        width: Dimensions.widthSize * 5,
      ),
    );
  }

  _actionButton() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.marginSizeHorizontal * 0.4),
          child: CustomImageWidget(
            path: Assets.icons.iconMap,
            height: Dimensions.iconSizeDefault * 1.2,
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
          child: CustomImageWidget(
            path: Assets.icons.iconMenu,
            height: Dimensions.iconSizeDefault * 1,
          ),
        ),
      ],
    );
  }

  _appBarTitleSubTitleWidget() {
    return TitleSubTitleWidget(
      titleFontSize: Dimensions.headingTextSize3,
      isCenterText: true,
      title: Strings.appName,
      subTitle: Strings.findYourNook,
      subTitleFontSize: Dimensions.headingTextSize6,
      titleColor: CustomColor.primaryLightColor.withOpacity(1),
      subTitleColor: CustomColor.secondaryLightColor,
    );
  }

  _listCardWidget(Map<String, dynamic> myData) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.heightSize * 0.1,
      ),
      child: Card(
        color: CustomColor.whiteColor,
        elevation: 4,
        child: ListCardItems(
          title: myData['title'],
          imageUrl: myData["imageUrl"],
          subTitle: myData["subTitle"],
          title2: myData["title2"],
          subTitle2: myData["subTitle2"],
        ),
      ),
    );
  }
}
