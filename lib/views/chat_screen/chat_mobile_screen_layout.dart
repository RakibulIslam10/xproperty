import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/custom_assets/assets.gen.dart';
import 'package:xpropertyapp/routes/routes.dart';
import 'package:xpropertyapp/views/profile_screen/profile_screen.dart';
import 'package:xpropertyapp/views/utils/size.dart';
import 'package:xpropertyapp/widgets/common/others/custom_image_widget.dart';
import 'package:xpropertyapp/widgets/common/text_lebels/title_heading1_widget.dart';
import '../../language/language.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class ChatMobileScreenLayout extends StatelessWidget {
  const ChatMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _typeMessageBoxWidget(),
    );
  }

  _bodyWidget() {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Dimensions.paddingSize * 4.5,
          right: Dimensions.paddingSize * 0.25,
          left: Dimensions.paddingSize * 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: mainEnd,
        children: [
          _firstMessageBoxWidget(),
          _logoAndMessageBoxWidget(),
          _replyMessageBoxAndLogo(),
        ],
      ),
    );
  }

  _typeMessageBoxWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize),
      child: Container(
          decoration: BoxDecoration(
              color: CustomColor.greyColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(Dimensions.radius)),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: Strings.typeAMessage,
                      hintStyle: TextStyle(color: CustomColor.greyColor),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              _sendButtonWidget(),
            ],
          )),
    );
  }

  _sendButtonWidget() {
    return Padding(
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
      child: CircleAvatar(
        backgroundColor: CustomColor.primaryLightColor,
        radius: Dimensions.radius * 1.6,
        child: CustomImageWidget(
          path: Assets.icons.iconSend,
          height: Dimensions.iconSizeDefault * 0.9,
        ),
      ),
    );
  }

  _replyMessageBoxAndLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.heightSize * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TitleHeading2Widget(
                text: "10.51 PM",
                fontSize: Dimensions.headingTextSize6,
                fontWeight: FontWeight.normal,
              ),
              verticalSpace(Dimensions.heightSize * 0.2),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: CustomColor.greyColor.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(8)),
                ),
                child: TitleHeading1Widget(
                  text: Strings.whatsUpBuddy,
                  fontSize: Dimensions.headingTextSize3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
            radius: Dimensions.radius * 0.95,
            backgroundImage: AssetImage(Assets.logos.man.path)),
      ],
    );
  }

  _logoAndMessageBoxWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical),
          child: CircleAvatar(
              radius: Dimensions.radius * 3,
              backgroundImage: AssetImage(Assets.logos.man.path)),
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal * 0.2),
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleHeading2Widget(
                text: "10.51 PM",
                fontSize: Dimensions.headingTextSize6,
                fontWeight: FontWeight.normal,
              ),
              verticalSpace(Dimensions.heightSize * 0.2),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.marginSizeHorizontal * 0.7,
                    vertical: Dimensions.heightSize * 0.7),
                decoration: BoxDecoration(
                  color: CustomColor.primaryLightColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Dimensions.radius),
                      bottomRight: Radius.circular(Dimensions.radius),
                      topRight: Radius.circular(Dimensions.radius)),
                ),
                child: TitleHeading1Widget(
                  text: "Helloo",
                  fontSize: Dimensions.headingTextSize3,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _firstMessageBoxWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TitleHeading2Widget(
                text: "10.51 PM",
                fontSize: Dimensions.headingTextSize6,
                fontWeight: FontWeight.normal,
              ),
              verticalSpace(Dimensions.heightSize * 0.2),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.marginSizeHorizontal * 0.7,
                    vertical: Dimensions.heightSize * 0.7),
                decoration: BoxDecoration(
                  color: CustomColor.greyColor.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(8)),
                ),
                child: TitleHeading1Widget(
                  text: "Hii",
                  fontSize: Dimensions.headingTextSize3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _appBarWidget() {
    return AppBar(
        backgroundColor: CustomColor.whiteColor,
        leading: BackButtonWidget(onTap: () {
          Get.back();
        }),
        actions: [_callButtonWidget()],
        title: _logoAndTextWidget());
  }

  _logoAndTextWidget() {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Stack(
            children: [
              ClipRect(
                child: CustomImageWidget(
                    path: Assets.logos.man.path,
                    height: Dimensions.heightSize * 4,
                    width: Dimensions.heightSize * 4),
              ),
              Positioned(
                top: 35,
                left: 50,
                child: CustomImageWidget(
                  path: Assets.icons.ellipse30,
                  height: Dimensions.heightSize * 0.8,
                  width: Dimensions.widthSize * 0.9,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal),
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                TitleHeading2Widget(
                  text: Strings.lomongi,
                  color: CustomColor.primaryDarkColor,
                  fontSize: Dimensions.headingTextSize3,
                ),
                TitleHeading2Widget(
                  text: Strings.businessAccount,
                  color: CustomColor.greyColor,
                  fontWeight: FontWeight.normal,
                  fontSize: Dimensions.headingTextSize6,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _callButtonWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.marginSizeHorizontal * 0.5),
      child: IconButton(
          onPressed: () {
            Get.toNamed(Routes.audioCallScreen);
          },
          icon: CustomImageWidget(
            path: Assets.icons.iconCall,
            color: CustomColor.greyColor,
          )),
    );
  }
}
