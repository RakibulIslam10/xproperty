import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/common/appbar/custom_app_bar.dart';
import '../../controller/add_property/phone_number_controller.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/title_sub_title_widget.dart';
import '../../widgets/common/others/contact_info_widget.dart';
import '../../widgets/common/inputs/custom_inquiry_form_widget.dart';
import '../../widgets/common/inputs/message_box_inquiry_form_widget.dart';
import '../res/assets_res.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class ContactUsMobileLayoutScreen extends StatelessWidget {
  ContactUsMobileLayoutScreen({super.key});

  final PhoneNumberController controller = Get.put(PhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          statusBarColor: CustomColor.primaryLightColor,
          title: Strings.contactUs),
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
          verticalSpace(Dimensions.marginSizeVertical * 0.5),
          const CustomInquiryFormWidget(hintText: "Name"),
          const CustomInquiryFormWidget(hintText: Strings.email),
          Row(
            children: [
              Container(
                height: Dimensions.heightSize * 3,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 2.5),
                    border: Border.all(
                        width: 1.5, color: CustomColor.primaryLightColor)),
                child: Row(
                  children: [
                    CountryCodePicker(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      showFlag: false,
                      onChanged: (CountryCode countryCode) {
                        controller.setCountryCode(countryCode.toString());
                      },
                      initialSelection: 'US',
                      textStyle: const TextStyle(
                          color: CustomColor.secondaryLightColor),
                    ),
                  ],
                ),
              ),
              horizontalSpace(Dimensions.marginSizeHorizontal * 0.5),
              const Expanded(
                child: CustomInquiryFormWidget(
                    keyboardType: TextInputType.number,
                    hintText: Strings.phoneNumber),
              ),
            ],
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
      child: const MessageBoxInquiryFormWidget(
          maxline: 4, hintText: Strings.message),
    );
  }

  _logoAndTitleWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.marginSizeVertical * 0.6),
      child: Column(
        children: [
          CustomImageWidget(
            path: AssetsRes.appLogo,
            height: Dimensions.heightSize * 11,
            width: Dimensions.widthSize * 12,
          ),
          TitleSubTitleWidget(
            isCenterText: true,
            subTitleFontSize: Dimensions.headingTextSize4,
            title: Strings.appName,
            subTitleFonWeight: FontWeight.bold,
            titleFontSize: Dimensions.headingTextSize3,
            subTitle: Strings.findYourNook,
            titleColor: CustomColor.primaryLightColor.withOpacity(0.90),
            subTitleColor: CustomColor.secondaryLightColor.withOpacity(0.50),
          ),
        ],
      ),
    );
  }
}
