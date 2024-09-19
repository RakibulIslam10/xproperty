import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/views/utils/size.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class AgentsDetailsMobileLayoutScreen extends StatelessWidget {
  const AgentsDetailsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: Center(
        child: SingleChildScrollView(
          child: _bodyWidget(),
        ),
      ),
    );
  }

  _bodyWidget() {
    return Column(
      children: [
        _logoWidget(),
        _titleAndSubTitleWidget(),
        _buttonWidget(),
        _dividerWidget(),
        verticalSpace(Dimensions.heightSize * 0.5),
        _tapBarViewWidget()
      ],
    );
  }















  _dividerWidget() {
    return Divider(
      color: CustomColor.greyColor.withOpacity(0.6),
      height: Dimensions.heightSize * 2,
    );
  }

  _tapBarViewWidget() {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _tabBarTextWidget(),
          SizedBox(
            height: Dimensions.heightSize * 38,
            child: TabBarView(children: [
              _propertiesListWidget(),
              _contactInformationWidget(),
            ]),
          )
        ],
      ),
    );
  }


  _propertiesListWidget() {
    return SizedBox(
      height: Dimensions.heightSize * 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.marginSizeVertical * 0.6,
            horizontal: Dimensions.marginSizeVertical * 0.5),
        child: ListView.builder(
          itemCount: ListCustomDataList.productsDetails2.length,
          itemBuilder: (context, index) {
            final myData = ListCustomDataList.productsDetails2[index];
            return _listCardWidget(myData);
          },
        ),
      ),
    );
  }

  _listCardWidget(Map<String, dynamic> myData) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.heightSize * 0.1,
      ),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(Routes.newsScreen);
        },
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
      ),
    );
  }

  _websiteUrl() {
    return Row(
      children: [
        CustomImageWidget(
          path: Assets.icons.globe,
          height: Dimensions.heightSize * 2,
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal),
        const TitleSubTitleWidget(
            title: Strings.websiteUrl,
            titleColor: CustomColor.primaryLightColor,
            subTitleColor: CustomColor.secondaryLightColor,
            subTitle: Strings.userWebUrl),
      ],
    );
  }

  _emailWidget() {
    return Row(
      children: [
        CustomImageWidget(
          path: Assets.icons.iconMail,
          height: Dimensions.heightSize * 1.5,
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal),
        const TitleSubTitleWidget(
            title: Strings.email,
            titleColor: CustomColor.primaryLightColor,
            subTitleColor: CustomColor.secondaryLightColor,
            subTitle: Strings.userEmail)
      ],
    );
  }

  _phoneNumberWidget() {
    return Row(
      children: [
        CustomImageWidget(
          path: Assets.icons.phone,
          height: Dimensions.heightSize * 2,
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal),
        const TitleSubTitleWidget(
            title: Strings.phoneNumber,
            titleColor: CustomColor.primaryLightColor,
            subTitleColor: CustomColor.secondaryLightColor,
            subTitle: Strings.userNumber),
      ],
    );
  }

  _locationAddressWidget() {
    return Row(
      children: [
        CustomImageWidget(
          path: Assets.icons.iconLocation,
          height: Dimensions.heightSize * 2.2,
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal),
        const TitleSubTitleWidget(
            title: Strings.address,
            titleColor: CustomColor.primaryLightColor,
            subTitleColor: CustomColor.secondaryLightColor,
            subTitle: Strings.userAddress),
      ],
    );
  }

  _contactInformationWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize),
      child: Column(
        children: [
          _locationAddressWidget(),
          verticalSpace(Dimensions.marginSizeVertical * 0.5),
          _phoneNumberWidget(),
          verticalSpace(Dimensions.marginSizeVertical * 0.5),
          _emailWidget(),
          verticalSpace(Dimensions.marginSizeVertical * 0.5),
          _websiteUrl(),
        ],
      ),
    );
  }

  _tabBarTextWidget() {
    return TabBar(
        onTap: (value) {},
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: CustomColor.primaryLightColor,
        dividerColor: Colors.transparent,
        tabs: [
          TitleHeading2Widget(
            text: Strings.properties,
            color: CustomColor.secondaryLightColor,
            fontSize: Dimensions.headingTextSize3,
          ),
          TitleHeading2Widget(
            text: Strings.contactInformation,
            color: CustomColor.primaryLightColor,
            fontSize: Dimensions.headingTextSize3,
          )
        ]);
  }

  _buttonWidget() {
    return Row(
      mainAxisAlignment: mainCenter,
      children: [
        SizedBox(
          height: Dimensions.heightSize * 3.5,
          width: Dimensions.widthSize * 12,
          child: ElevatedButton(
            onPressed: () async {},
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

  _appBarWidget() {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      leading: BackButtonWidget(onTap: () {
        Get.back();
      }),
      title: TitleHeading2Widget(
        text: Strings.agentsDetails,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
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
        backgroundImage: AssetImage(Assets.background.personProfile.path),
        radius: Dimensions.radius * 6,
      ),
    );
  }
}
