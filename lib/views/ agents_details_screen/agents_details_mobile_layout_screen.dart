import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/contact_info_widget.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/call_and_message_dual_button_widget.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/custom_app_Bar.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class AgentsDetailsMobileLayoutScreen extends StatelessWidget {
  const AgentsDetailsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Strings.agentsDetails),
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

  _contactInformationWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize),
      child: Column(
        children: [
          ContactInfoWidget(
              title: Strings.address,
              subTitle: Strings.userAddress,
              iconPath: Assets.icons.iconLocation),
          ContactInfoWidget(
            title: Strings.phoneNumber,
            subTitle: Strings.userNumber,
            iconPath: Assets.icons.iconCall,
            iconSize: Dimensions.heightSize * 1.8,
            color: CustomColor.primaryLightColor,
          ),
          ContactInfoWidget(
            title: Strings.email,
            subTitle: Strings.userEmail,
            iconPath: Assets.icons.iconMail,
            iconSize: Dimensions.heightSize * 1.4,
          ),
          ContactInfoWidget(
              title: Strings.websiteUrl,
              subTitle: Strings.websiteUrl,
              iconPath: Assets.icons.globe),
        ],
      ),
    );
  }

  _tabBarTextWidget() {
    return TabBar(
        labelColor: CustomColor.primaryLightColor,
        unselectedLabelColor: CustomColor.secondaryLightColor,
        onTap: (value) {},
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: CustomColor.primaryLightColor,
        dividerColor: Colors.transparent,
        tabs: [
          Text(
            Strings.properties,
            style: TextStyle(
                fontSize: Dimensions.headingTextSize3,
                fontWeight: FontWeight.bold),
          ),
          Text(
            Strings.contactInformation,
            style: TextStyle(
                fontSize: Dimensions.headingTextSize3,
                fontWeight: FontWeight.bold),
          ),
        ]);
  }

  _buttonWidget() {
    return CallAndMessageDualButtonWidget(
        onCallPressed: () {}, onMessagePressed: () {});
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
