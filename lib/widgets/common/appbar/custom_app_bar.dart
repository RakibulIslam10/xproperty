import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../views/utils/custom_color.dart';
import '../../../views/utils/dimensions.dart';
import 'back_button.dart';
import '../text_lebels/title_heading2_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? actionText;
  final double? appbarSize;
  final Color? statusBarColor;
  final Brightness? statusBarIconBrightness;

  const CustomAppBar({
    super.key,
    required this.title,
    this.appbarSize,
    this.statusBarColor,
    this.statusBarIconBrightness,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: Dimensions.paddingSize),
          child: TitleHeading2Widget(
              text: actionText ?? "",
              color: CustomColor.primaryLightColor,
              fontSize: Dimensions.headingTextSize3),
        ),
      ],
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      titleSpacing: Dimensions.heightSize * 0.6,
      toolbarHeight: Dimensions.heightSize * 6,
      leadingWidth: Dimensions.widthSize * 7,
      leading: Padding(
        padding: EdgeInsets.all(Dimensions.paddingSize * 0.45),
        child: const BackButtonWidget(),
      ),
      title: TitleHeading2Widget(
        text: title,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? CustomColor.whiteColor,
        statusBarIconBrightness: statusBarIconBrightness ?? Brightness.light,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(appbarSize ?? Dimensions.appBarHeight);
}
