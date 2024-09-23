import 'package:flutter/material.dart';
import 'package:xproperty/widgets/custom_app_Bar.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/contact_info_widget.dart';
import '../../widgets/custom_inquiry_form_widget.dart';
import '../../widgets/message_box_inquiry_form_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class ContactUsMobileLayoutScreen extends StatelessWidget {
  const ContactUsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: Strings.contactUs),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: crossCenter,
        mainAxisAlignment: mainStart,
        children: [
          _logoAndTitleWidget(),
          _tapBarViewWidget(),
        ],
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
              _inquiryFormWidget(),
              _contactInformationWidget(),
            ]),
          )
        ],
      ),
    );
  }

  _tabBarTextWidget() {
    return TabBar(
      labelColor: CustomColor.primaryLightColor,
      unselectedLabelColor: CustomColor.secondaryLightColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: CustomColor.primaryLightColor,
        dividerColor: Colors.transparent,
        tabs: [
          Text(
            Strings.inquiryForm,
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

  _inquiryFormWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TitleHeading2Widget(
              text: Strings.inquiryForm, fontSize: Dimensions.headingTextSize4),
          const CustomInquiryFormWidget(hintText: "Name"),
          const CustomInquiryFormWidget(
            hintText: Strings.email,
          ),
          _messageBoxWidget(),
          verticalSpace(Dimensions.heightSize),
          _buttonWidget(),
        ],
      ),
    );
  }

  _buttonWidget() {
    return PrimaryButton(
      fontWeight: FontWeight.bold,
      title: Strings.submit,
      fontSize: Dimensions.headingTextSize2,
      buttonTextColor: CustomColor.whiteColor,
      buttonColor: CustomColor.primaryLightColor,
      radius: Dimensions.radius * 22,
      borderColor: Colors.transparent,
      onPressed: () {},
    );
  }

  _messageBoxWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.heightSize * 0.55),
      child: const MessageBoxInquiryFormWidget(hintText: Strings.message),
    );
  }










  _logoAndTitleWidget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.5),
      child: Column(
        children: [
          CustomImageWidget(
            path: AssetsRes.appLogo,
            height: Dimensions.heightSize * 10,
            width: double.infinity,
          ),
          TitleSubTitleWidget(
            isCenterText: true,
            subTitleFontSize: Dimensions.headingTextSize5,
            title: Strings.appName,
          subTitleFonWeight: FontWeight.bold,
            titleFontSize: Dimensions.headingTextSize4,
            subTitle: Strings.findYourNook,
            titleColor: CustomColor.primaryLightColor.withOpacity(0.90),
            subTitleColor: CustomColor.secondaryLightColor.withOpacity(0.50),
          ),
        ],
      ),
    );
  }
}
