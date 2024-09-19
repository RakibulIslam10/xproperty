import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpropertyapp/custom_assets/assets.gen.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';
import '../others/custom_image_widget.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          left: Dimensions.paddingSize * 0.6,
          top: Dimensions.paddingSize * 0.6,
          bottom: Dimensions.paddingSize * 0.6,
        ),
        child: CustomImageWidget(
          path: Assets.icons.arrowLeft,
        ),
      ),
    );
  }
}
