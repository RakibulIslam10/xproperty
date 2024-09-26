import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/chat_text_box_widget.dart';
import 'package:xproperty/widgets/profile_picture_status_widget.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

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
          right: Dimensions.paddingSize * 0.50,
          left: Dimensions.paddingSize * 0.50),
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
          child: _textFieldAndSendButtonWidget()),
    );
  }

  _textFieldAndSendButtonWidget() {
    return Row(
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
              const ChatTextBoxWidget(
                  bottomRightRadius: 0, text: Strings.whatsUpBuddy)
            ],
          ),
        ),
        CircleAvatar(
            radius: Dimensions.radius * 0.90,
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
          child: _logoWidget(),
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal * 0.2),
        _textbox(),
      ],
    );
  }

  _textbox() {
    return Padding(
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
          const ChatTextBoxWidget(
              topLeftRadius: 0,
              textColor: CustomColor.whiteColor,
              color: CustomColor.primaryLightColor,
              text: "Helloo")
        ],
      ),
    );
  }

  _logoWidget() {
    return Stack(
      children: [
        ClipRect(
          child: CustomImageWidget(
              path: Assets.logos.man.path,
              height: Dimensions.heightSize * 2.9,
              width: Dimensions.heightSize * 3.2),
        ),
        Positioned(
          top: 25,
          left: 35,
          child: CustomImageWidget(
            path: Assets.icons.ellipse30,
            height: Dimensions.heightSize * 0.7,
            width: Dimensions.widthSize * 0.8,
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
              const ChatTextBoxWidget(bottomRightRadius: 0, text: "Hii")
            ],
          ),
        ),
      ],
    );
  }

  _appBarWidget() {
    return AppBar(
      toolbarHeight: Dimensions.heightSize * 5.5,
      backgroundColor: CustomColor.whiteColor,
      leading: _backButton(),
      title: _logoAndTextWidget(),
      actions: [_callButtonWidget()],
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: CustomColor.primaryLightColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  _backButton() {
    return Padding(
      padding: EdgeInsets.only(
          left: Dimensions.paddingSize * 0.50,
          top: Dimensions.paddingSize * 0.50,
          bottom: Dimensions.paddingSize * 0.50),
      child: const BackButtonWidget(),
    );
  }

  _logoAndTextWidget() {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.profileScreen);
      },
      child: Row(
        children: [
          const ProfilePictureStatusWidget(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.marginSizeHorizontal * 0.4),
            child: _titleAndSubTitleWidget(),
          ),
        ],
      ),
    );
  }

  _titleAndSubTitleWidget() {
    return Column(
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
