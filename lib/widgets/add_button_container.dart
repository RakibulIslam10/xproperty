import 'package:flutter/material.dart';
import '../views/utils/custom_color.dart';
import '../views/utils/dimensions.dart';

class AddButtonContainer extends StatelessWidget {
  const AddButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Dimensions.marginSizeHorizontal * 0.080,
            vertical: Dimensions.marginSizeVertical * 0.4),
        width: Dimensions.widthSize * 7,
        height: Dimensions.heightSize * 5,
        decoration: BoxDecoration(
          color: CustomColor.secondaryLightColor,
          // Replace with your desired color
          borderRadius: BorderRadius.circular(
              Dimensions.radius), // Adjust the border radius as needed
        ),
        child: const Center(
          child: Text(
            '+',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white, // Replace with your desired text color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
