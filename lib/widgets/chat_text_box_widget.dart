import 'package:flutter/material.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';
import 'common/text_lebels/title_heading1_widget.dart';

class ChatTextBoxWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;

  const ChatTextBoxWidget({
    super.key,
    required this.text, this.color, this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color ?? CustomColor.greyColor.withOpacity(0.15),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(8)),
      ),
      child: TitleHeading1Widget(
        text: text,color: textColor,
        fontSize: Dimensions.headingTextSize3,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}