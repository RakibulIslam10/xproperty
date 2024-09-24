import 'package:flutter/material.dart';
import '../../custom_assets/assets.gen.dart';
import '../../language/language.dart';
import '../../widgets/common/others/custom_image_widget.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/follow_button_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class FollowingMobileLayoutScreen extends StatelessWidget {
  const FollowingMobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          statusBarColor: CustomColor.primaryLightColor,
          title: Strings.following),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.marginSizeVertical * 0.2),
          child: ListTile(
              leading: _logoWidget(),
              title: TitleHeading2Widget(
                text: Strings.alexaConton,
                fontSize: Dimensions.headingTextSize4,
              ),
              trailing: CustomButton(onPressed: () {}, text: Strings.unfollow)),
        );
      },
    );
  }

  _logoWidget() {
    return Stack(
      children: [
        ClipRect(
          child: CustomImageWidget(
              path: Assets.logos.man.path,
              height: Dimensions.heightSize * 4.5,
              width: Dimensions.heightSize * 4.5),
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
    );
  }
}
