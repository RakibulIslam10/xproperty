import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../views/utils/custom_style.dart';

class TitleHeading4Widget extends StatelessWidget {
  const TitleHeading4Widget({
    super.key,
    required this.text,
    this.textAlign,
    this.textOverflow,
    this.padding = paddingValue,
    this.opacity = 1.0,
    this.maxLines,
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  final String text;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final EdgeInsetsGeometry padding;
  final double opacity;
  final int? maxLines;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  static const paddingValue = EdgeInsets.all(0.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: padding,
          child: Text(
            text, // Use the text variable directly
            style: CustomStyle.lightHeading4TextStyle.copyWith(
                fontSize: fontSize,
                fontWeight: fontWeight,
                color: color),
            textAlign: textAlign,
            overflow:textOverflow,
            maxLines: maxLines,
          )
        );
  }
}
