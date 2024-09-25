import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/custom_app_bar.dart';
import '../../controller/filters_screen/button_color_controlller.dart';
import '../../controller/filters_screen/slider_controller.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/Custom_slider_widget.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/text_lebels/title_heading3_widget.dart';
import '../../widgets/fgarden_filter_button_widget.dart';
import '../../widgets/number_container_widget.dart';
import '../../widgets/outline_button_widget.dart';
import '../../widgets/street_outline_button.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class FiltersMobileScreenLayout extends StatelessWidget {
  FiltersMobileScreenLayout({super.key});

  final _sliderController = Get.put(SliderController());
  final _controller = Get.put(ButtonColorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        statusBarColor: CustomColor.primaryLightColor,
        title: Strings.filters,
        actionText: Strings.reset,
      ),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sellAndRentButtonWidget(),
            _outlineButtonList(),
            _priceRangeTextWidget(),
            CustomSliderWidget(controller: _sliderController),
            _bedroomsTextAndNumberedContainerWidget(),
            _gardenFilterButton(),
            _streetButtonWidget(),
            _buttonWidget(),
          ],
        ),
      ),
    );
  }

  _bedroomsTextAndNumberedContainerWidget() {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.marginSizeVertical,
      ),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: Dimensions.paddingSize * 0.2),
            child: const TitleHeading3Widget(text: Strings.bedrooms),
          ),
          NumberedContainer(),
        ],
      ),
    );
  }

  _gardenFilterButton() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.paddingSize),
      child: Row(
        children: [
          GardenFilterOutlineButtonWidget(
              index: 0,
              onPressed: () {
                _controller.gardenFilterOutlineButtonOnchange(0);
              },
              title: Strings.withGarden),
          horizontalSpace(Dimensions.marginSizeHorizontal * 0.5),
          GardenFilterOutlineButtonWidget(
              index: 1,
              onPressed: () {
                _controller.gardenFilterOutlineButtonOnchange(0);
              },
              title: Strings.withoutGarden),
        ],
      ),
    );
  }

  _streetButtonWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        const TitleHeading3Widget(text: Strings.street),
        Padding(
          padding: EdgeInsets.only(
              top: Dimensions.marginSizeVertical * 0.15,
              bottom: Dimensions.marginSizeVertical * 2),
          child: Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              StreetOutlineButtonWidget(
                  index: 0,
                  onPressed: () {
                    _controller.streetOutlineButtonOnchange(0);
                  },
                  title: "CA 8782"),
              StreetOutlineButtonWidget(
                  index: 1,
                  onPressed: () {
                    _controller.streetOutlineButtonOnchange(1);
                  },
                  title: "GA 8782"),
              StreetOutlineButtonWidget(
                  index: 2,
                  onPressed: () {
                    _controller.streetOutlineButtonOnchange(2);
                  },
                  title: "GA 8782"),
            ],
          ),
        ),
      ],
    );
  }

  _outlineButtonList() {
    return Row(
      mainAxisAlignment: mainSpaceBet,
      children: [
        OutlineButtonWidget(
            index: 0,
            onPressed: () {
              _controller.outlineButtonOnchange(0);
            },
            title: Strings.residential),
        OutlineButtonWidget(
            index: 1,
            onPressed: () {
              _controller.outlineButtonOnchange(1);
            },
            title: Strings.commercial),
        OutlineButtonWidget(
            index: 2,
            onPressed: () {
              _controller.outlineButtonOnchange(2);
            },
            title: Strings.industrial),
      ],
    );
  }

  _buttonWidget() {
    return PrimaryButton(
      fontWeight: FontWeight.bold,
      title: Strings.showProperties,
      fontSize: Dimensions.headingTextSize2,
      buttonTextColor: CustomColor.whiteColor,
      buttonColor: CustomColor.primaryLightColor,
      radius: Dimensions.radius * 25,
      borderColor: Colors.transparent,
      onPressed: () {
        Get.toNamed(Routes.propertyScreen);
      },
    );
  }

  _priceRangeTextWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.marginSizeVertical,
          bottom: Dimensions.marginSizeVertical * 0.4),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          const TitleHeading3Widget(text: Strings.priceRange),
          Obx(
            () => TitleHeading3Widget(
                text: "${_sliderController.sliderValue} - 10000.0"),
          )
        ],
      ),
    );
  }

  _sellAndRentButtonWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.marginSizeVertical * 0.6),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          const TitleHeading3Widget(text: Strings.addfor),
          Container(
            height: Dimensions.heightSize * 2.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * .5),
              color: CustomColor.secondaryLightColor,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return SizedBox(
                    width: Dimensions.widthSize * 6.5,
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          _controller.sellAndRentButtonOnChange(index);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(
                                    Dimensions.radius * (index == 0 ? .5 : 0)),
                                right: Radius.circular(
                                    Dimensions.radius * (index == 1 ? .5 : 0)),
                              ),
                              color: _controller.myIndex.value == index
                                  ? CustomColor.primaryLightColor
                                  : Colors.transparent),
                          child: TitleHeading2Widget(
                            text: _controller.buttonTextList[index],
                            color: _controller.myIndex.value == index
                                ? CustomColor.whiteColor
                                : CustomColor.primaryDarkColor,
                            fontSize: Dimensions.headingTextSize4,
                          ),
                        ),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
