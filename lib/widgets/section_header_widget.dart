import 'package:flutter/material.dart';
import 'package:xpropertyapp/views/utils/custom_color.dart';
import 'package:xpropertyapp/views/utils/dimensions.dart';
import 'package:xpropertyapp/views/utils/size.dart';

import '../language/language.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.onTapSeeAll,
  });

  final String title;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Dimensions.heightSize * 0.1,
      ),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: Dimensions.headingTextSize3 * 1.1,
                fontWeight: FontWeight.bold,
                color: CustomColor.primaryDarkColor),
          ),
          TextButton(
            onPressed: onTapSeeAll,
           child: Text(Strings.seeAll,
             style: TextStyle(
                 fontSize: Dimensions.headingTextSize3 * 1,
                 color: CustomColor.primaryLightColor,
                 fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
