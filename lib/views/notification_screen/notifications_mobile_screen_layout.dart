import 'package:flutter/material.dart';
import 'package:xproperty/widgets/custom_app_bar.dart';
import 'package:xproperty/widgets/dialog_box.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize * 0.2),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: _logoWidget(),
            title: TitleHeading2Widget(
              text: "Lomongi follow you",
              color: CustomColor.primaryLightColor,
              fontSize: Dimensions.headingTextSize4,
            ),
            subtitle: TitleHeading2Widget(
              text: "11:28 AM 3/1/2022",
              color: CustomColor.secondaryLightColor,
              fontSize: Dimensions.headingTextSize6,
            ),
            trailing: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        const RemoveFromNotificationDialog(),
                  );
                },
                child: CustomImageWidget(path: Assets.icons.iconVertical)),
          );
        },
      ),
    );
  }

  _logoWidget() {
    return CircleAvatar(
      backgroundImage: AssetImage(Assets.background.person.path),
      radius: Dimensions.radius * 2,
    );
  }
}
