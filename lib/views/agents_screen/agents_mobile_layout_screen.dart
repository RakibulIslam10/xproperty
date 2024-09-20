import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

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
      leading:  const BackButtonWidget(),
      title: TitleHeading2Widget(
        text: Strings.agents,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
    );
  }
}
