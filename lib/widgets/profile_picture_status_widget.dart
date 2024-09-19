import 'package:flutter/material.dart';
import '../custom_assets/assets.gen.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/others/custom_image_widget.dart';

class ProfilePictureStatusWidget extends StatelessWidget {
  const ProfilePictureStatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: Dimensions.radius * 3,
          child: CustomImageWidget(
            path: Assets.logos.man.path,
            height: Dimensions.heightSize * 4.5,
            width: Dimensions.widthSize * 4.6,
          ),
        ),
        Positioned(
          top: 38,
          left: 49,
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