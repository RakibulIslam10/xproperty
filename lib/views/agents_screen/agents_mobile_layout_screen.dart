import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/custom_app_Bar.dart';
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
      appBar: const CustomAppBar(title: Strings.agents),
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
            text: Strings.agentNumber,
            fontWeight: FontWeight.normal,
            fontSize: Dimensions.headingTextSize6,
          ),
        );
      },
    );
  }

  _logoWidget() {
    return CircleAvatar(
      backgroundImage: AssetImage(Assets.background.personProfile.path),
      radius: Dimensions.radius * 2,
    );
  }
}
