import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/custom_assets/assets.gen.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';
import 'package:xpropertyapp/widgets/common/appbar/back_button.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';

class AgentsMobileLayoutScreen extends StatelessWidget {
  const AgentsMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Get.toNamed(Routes.agentsDetailsScreen);
          },
          leading: _logoWidget(),
          title: TitleHeading2Widget(
            text: Strings.lomongi,
            fontSize: Dimensions.headingTextSize4,
          ),
          subtitle: TitleHeading2Widget(
            text: Strings.userNumber,
            fontSize: Dimensions.headingTextSize6,
          ),
        );
      },
    );
  }























  _logoWidget() {
    return CircleAvatar(
      backgroundImage: AssetImage(Assets.logos.profilePicture.path),
      radius: Dimensions.radius * 2,
    );
  }

  _appBarWidget() {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      leading: BackButtonWidget(onTap: () {
        Get.back();
      }),
      title: TitleHeading2Widget(
        text: Strings.agents,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
    );
  }
}
