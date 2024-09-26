import 'package:flutter/material.dart';
import '../custom_assets/assets.gen.dart';
import '../language/language.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import '../views/utils/size.dart';
import 'common/others/custom_image_widget.dart';

class CallAndMessageDualButtonWidget extends StatelessWidget {
  final VoidCallback onCallPressed;
  final VoidCallback onMessagePressed;

  const CallAndMessageDualButtonWidget({
    super.key,
    required this.onCallPressed,
    required this.onMessagePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(
          onPressed: onCallPressed,
          iconPath: Assets.icons.iconCall,
          text: Strings.call,
        ),
        horizontalSpace(Dimensions.marginSizeHorizontal),
        _buildButton(
          onPressed: onMessagePressed,
          iconPath: Assets.icons.iconMail,
          text: Strings.message,
        ),
      ],
    );
  }

  _buildButton({
    required VoidCallback onPressed,
    required String iconPath,
    required String text,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize,vertical: Dimensions.paddingSize * 0.1),
        backgroundColor: CustomColor.greyColor.withOpacity(0.20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageWidget(
            path: iconPath,
            height: Dimensions.heightSize,
            width: Dimensions.widthSize,
            color: CustomColor.primaryLightColor,
          ),
          horizontalSpace(Dimensions.marginSizeHorizontal * 0.3),
          Text(text,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Dimensions.headingTextSize3 * 0.8,
                  color: CustomColor.primaryDarkColor)),
        ],
      ),
    );
  }
}
