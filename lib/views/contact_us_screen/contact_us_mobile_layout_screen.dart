import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/custom_assets/assets.gen.dart';
import 'package:xpropertyapp/views/utils/size.dart';
import 'package:xpropertyapp/widgets/message_box_inquiry_form_widget.dart';
import '../../language/language.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/custom_inquiry_form_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class ContactUsMobileLayoutScreen extends StatelessWidget {
  const ContactUsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
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
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: CustomColor.primaryLightColor,
        dividerColor: Colors.transparent,
        tabs: [
          TitleHeading2Widget(
            text: Strings.inquiryForm,
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
            subTitleFontSize: Dimensions.headingTextSize2,
            title: Strings.appName,
            subTitle: Strings.findYourNook,
            titleColor: CustomColor.primaryLightColor.withOpacity(0.90),
            subTitleColor: CustomColor.secondaryLightColor,
          ),
        ],
      ),
    );
  }

  _appBarWidget() {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      leading: BackButtonWidget(onTap: () {
        Get.back();
      }),
      title: TitleHeading2Widget(
        text: Strings.contactUs,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
    );
  }
}
