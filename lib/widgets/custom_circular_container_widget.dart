import 'package:flutter/cupertino.dart';

import '../views/utils/custom_color.dart';

class CustomCircularContainer extends StatelessWidget {
  final double top;
  final double left;
  final double size;

  const CustomCircularContainer({
    super.key,
    required this.top,
    required this.left,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: Container(
            height: size,
            width: size,
            color: CustomColor.primaryLightColor.withOpacity(0.20)),
      ),
    );
  }
}
