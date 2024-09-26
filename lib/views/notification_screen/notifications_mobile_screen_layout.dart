import 'package:flutter/material.dart';
import 'package:xproperty/widgets/custom_app_bar.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/text_lebels/title_heading3_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class NotificationsMobileScreenLayout extends StatelessWidget {
  const NotificationsMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          statusBarColor: CustomColor.primaryLightColor,
          title: Strings.notification),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
            leading: _logoWidget(),
            title: _titleWidget(),
            subtitle: _subtitleWidget(),
            trailing: _popupMenuButton());
      },
    );
  }

  _subtitleWidget() {
    return TitleHeading2Widget(
      text: "11:28 AM 3/1/2022",
      color: CustomColor.secondaryLightColor,
      fontSize: Dimensions.headingTextSize6,
    );
  }

  _titleWidget() {
    return TitleHeading2Widget(
      text: "Lomongi followed you",
      color: CustomColor.primaryLightColor,
      fontSize: Dimensions.headingTextSize4,
    );
  }

  _popupMenuButton() {
    return PopupMenuButton(
        offset: const Offset(-35, 0),
        onSelected: (value) {},
        menuPadding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius)),
        color: CustomColor.whiteColor,
        icon: CustomImageWidget(path: Assets.icons.iconVertical),
        itemBuilder: (context) {
          return [
            PopupMenuItem(
                padding: EdgeInsets.zero,
                height: Dimensions.heightSize * 4,
                child: const Center(
                  child: TitleHeading3Widget(
                      color: CustomColor.primaryLightColor,
                      text: Strings.removefromNotification),
                )),
          ];
        });
  }

  _logoWidget() {
    return CircleAvatar(
      backgroundImage: AssetImage(Assets.background.person.path),
      radius: Dimensions.radius * 2.6,
    );
  }
}
