import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class ProfileMobileScreenLayout extends StatelessWidget {
  const ProfileMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MyDrawerMenu(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return SingleChildScrollView(
        child: Column(
      children: [
        _logoWidget(),
        _titleAndSubTitleWidget(),
        _buttonWidget(),
        _profileBoxWidget(),
        _listCardWidget()
      ],
    ));
  }

  _listCardWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
      child: ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: ListCustomDataList.productsDetails2.length,
        itemBuilder: (context, index) {
          final myData = ListCustomDataList.productsDetails2[index];
          return _listCardItems(myData);
        },
      ),
    );
  }

  _titleAndSubTitleWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.heightSize * 1.5),
      child: const TitleSubTitleWidget(
          isCenterText: true,
          subTitleColor: CustomColor.greyColor,
          titleColor: CustomColor.primaryLightColor,
          title: Strings.alexaConton,
          subTitle: Strings.takefulRealEstate),
    );
  }

  _logoWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.heightSize * 3, bottom: Dimensions.heightSize),
      child: CircleAvatar(
        backgroundImage: AssetImage(Assets.logos.profilePicture.path),
        radius: Dimensions.radius * 6,
      ),
    );
  }

  _profileBoxWidget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.2),
      child: Column(
        children: [
          Divider(
            color: CustomColor.greyColor.withOpacity(0.5),
          ),
          _boxContentWidget(),
          Divider(
            color: CustomColor.greyColor.withOpacity(0.5),
          ),
        ],
      ),
    );
  }

  _boxContentWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSizeHorizontal * 2,
          vertical: Dimensions.marginSizeVertical * 0.15),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.followersScreen);
            },
            child: TitleSubTitleWidget(
              isCenterText: true,
              titleFontSize: Dimensions.headingTextSize3,
              title: "500",
              subTitle: "Followers",
              subTitleColor: CustomColor.primaryDarkColor,
              subTitleFontSize: Dimensions.headingTextSize6,
            ),
          ),
          Container(
            color: CustomColor.greyColor.withOpacity(0.9),
            height: Dimensions.heightSize * 2.8,
            width: 1.5,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.propertyScreen);
            },
            child: TitleSubTitleWidget(
              isCenterText: true,
              titleFontSize: Dimensions.headingTextSize3,
              title: "60",
              subTitle: "Properties",
              subTitleColor: CustomColor.primaryDarkColor,
              subTitleFontSize: Dimensions.headingTextSize6,
            ),
          ),
          Container(
            color: CustomColor.greyColor.withOpacity(0.9),
            height: Dimensions.heightSize * 2.8,
            width: 1.5,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.followingScreen);
            },
            child: TitleSubTitleWidget(
              isCenterText: true,
              titleFontSize: Dimensions.headingTextSize3,
              title: "100",
              subTitle: "Following",
              subTitleColor: CustomColor.primaryDarkColor,
              subTitleFontSize: Dimensions.headingTextSize6,
            ),
          ),
        ],
      ),
    );
  }

  _buttonWidget() {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        SizedBox(
          height: Dimensions.heightSize * 3.5,
          width: Dimensions.widthSize * 12,
          child: ElevatedButton(
            onPressed: () {
              Get.toNamed(Routes.audioCallScreen);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageWidget(
                  path: Assets.icons.iconCall,
                  color: CustomColor.primaryLightColor,
                ),
                const SizedBox(width: 8.0),
                Text(Strings.call,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: Dimensions.headingTextSize3,
                        color: CustomColor.primaryDarkColor)),
              ],
            ),
          ),
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal),
        SizedBox(
          height: Dimensions.heightSize * 3.5,
          width: Dimensions.widthSize * 15,
          child: ElevatedButton(
            onPressed: () async {
              Get.toNamed(Routes.chatScreen);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageWidget(
                  path: Assets.icons.iconMail,
                  color: CustomColor.primaryLightColor,
                ),
                const SizedBox(width: 8.0),
                Text(Strings.message,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: Dimensions.headingTextSize3,
                        color: CustomColor.primaryDarkColor)),
              ],
            ),
          ),
        )
      ],
    );
  }

  _listCardItems(Map<String, dynamic> myData) {
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
