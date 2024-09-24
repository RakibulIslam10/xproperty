import 'package:flutter/cupertino.dart';
import '../../views/utils/custom_color.dart';
import '../common/others/custom_image_widget.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget(
      {super.key,
      required this.content,
      this.backgroundImg,
      this.containerOpacity});

  final Widget content;
  final backgroundImg;
  final double? containerOpacity;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Stack(
        children: [
          CustomImageWidget(
            path: backgroundImg,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
              color: CustomColor.primaryDarkColor.withOpacity(
                  containerOpacity ?? 0.5) // Semi-transparent black overlay
              ),
        ],
      ),
      content,
    ]);
  }
}
