import 'package:flutter/material.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/text_lebels/title_heading1_widget.dart';

class ChatTextBoxWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double topRightRadius;
  final double topLeftRadius;

  const ChatTextBoxWidget({
    super.key,
    required this.text,
    this.color,
    this.textColor,
    this.bottomLeftRadius = 10.0,
    this.bottomRightRadius = 10.0,
    this.topRightRadius = 10,
    this.topLeftRadius = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.paddingSize * 0.6,
          vertical: Dimensions.paddingSize * 0.3),
      decoration: BoxDecoration(
        color: color ?? CustomColor.greyColor.withOpacity(0.15),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeftRadius),
          bottomRight: Radius.circular(bottomRightRadius),
          topRight: Radius.circular(topRightRadius),
          topLeft: Radius.circular(topLeftRadius),
        ),
      ),
      child: TitleHeading1Widget(
        text: text,
        color: textColor,
        fontSize: Dimensions.headingTextSize3,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
