import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/add_property/dropdown_controller.dart';
import '../../controller/filters_screen/button_color_controlller.dart';
import '../../controller/filters_screen/slider_controller.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/Custom_slider_widget.dart';
import '../../widgets/add_button_container.dart';
import '../../widgets/common/appbar/back_button.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/text_lebels/title_heading3_widget.dart';
import '../../widgets/custom_inquiry_form_widget.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/fgarden_filter_button_widget.dart';
import '../../widgets/message_box_inquiry_form_widget.dart';
import '../../widgets/number_container_widget.dart';
import '../../widgets/outline_button_widget.dart';
import '../../widgets/search_dropdown_button_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class AddPropertyMobileLayoutScreen extends StatelessWidget {
  AddPropertyMobileLayoutScreen({super.key});

  final _controller = Get.put(ButtonColorController());
  final _sliderController = Get.put(SliderController());
  final DropdownController dropdownController = Get.put(DropdownController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.paddingSize * 0.5,
        horizontal: Dimensions.paddingSize * 0.8,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            _sellAndRentButtonWidget(),
            _inquiryFormWidget(),
            const CustomInquiryFormWidget(hintText: "Area"),
            const CustomInquiryFormWidget(hintText: "0.00"),
            const TitleHeading3Widget(text: Strings.propertiesType),
            _outlineButtonList(),
            _priceRangeTextWidget(),
            CustomSliderWidget(controller: _sliderController),
             TitleHeading3Widget(
                padding: EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.2),
                text: Strings.bedrooms),
            NumberedContainer(),
            _gardenFilterButton(),
            _selectImageTextWidget(),
            _imagePickWidget(),
            addressFormWidget(),
            _contactInfoField(),
            _buttonWidget(),
          ],
        ),
      ),
    );
  }

  _selectImageTextWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.marginSizeVertical * 0.5),
      child: const TitleHeading3Widget(text: Strings.selectedImage),
    );
  }

  _contactInfoField() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: Dimensions.marginSizeVertical * 0.5),
          child: const TitleHeading3Widget(text: Strings.contactInfo),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.marginSizeVertical * 0.4),
          child: const CustomTextField(hintText: "Email"),
        ),
        const CustomTextField(hintText: "Phone Number"),
      ],
    );
  }

  addressFormWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Padding(
          padding: EdgeInsets.only(top: Dimensions.marginSizeVertical * 0.5),
          child: const TitleHeading3Widget(text: Strings.address),
        ),
        const CustomTextField(
          hintText: "Address, House No",
        ),
        SearchDropdownButton(
          items: dropdownController.genderItems,
          hintText: 'Choose Province',
          onChanged: (value) {},
        ),
        SearchDropdownButton(
          items: dropdownController.genderItems,
          hintText: 'Choose City',
          onChanged: (value) {},
        ),
        SearchDropdownButton(
          items: dropdownController.genderItems,
          hintText: 'State',
          onChanged: (value) {},
        ),
        SearchDropdownButton(
          items: dropdownController.genderItems,
          hintText: 'Street',
          onChanged: (value) {},
        ),
      ],
    );
  }

  _imagePickWidget() {
    return Row(
      mainAxisAlignment: mainSpaceBet,
      children: const [
        AddButtonContainer(),
        AddButtonContainer(),
        AddButtonContainer(),
        AddButtonContainer(),
      ],
    );
  }

  _appBarWidget() {
    return AppBar(
      backgroundColor: CustomColor.whiteColor,
      leading: BackButtonWidget(onTap: () {
        Get.back();
      }),
      title: TitleHeading2Widget(
        text: Strings.addProperty,
        fontSize: Dimensions.headingTextSize2 * 1.1,
        color: CustomColor.primaryLightColor,
      ),
    );
  }

  _buttonWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.paddingSize * 2),
      child: PrimaryButton(
        fontWeight: FontWeight.bold,
        title: Strings.submit,
        fontSize: Dimensions.headingTextSize2,
        buttonTextColor: CustomColor.whiteColor,
        buttonColor: CustomColor.primaryLightColor,
        radius: Dimensions.radius * 25,
        borderColor: Colors.transparent,
        onPressed: () {
          Get.toNamed(Routes.dashboardScreen);
        },
      ),
    );
  }

  _gardenFilterButton() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: Dimensions.marginSizeHorizontal * 0.5,
          ),
          child: GardenFilterOutlineButtonWidget(
              index: 0,
              onPressed: () {
                _controller.gardenFilterOutlineButtonOnchange(0);
              },
              title: Strings.withGarden),
        ),
        GardenFilterOutlineButtonWidget(
            index: 1,
            onPressed: () {
              _controller.gardenFilterOutlineButtonOnchange(1);
            },
            title: Strings.withoutGarden),
      ],
    );
  }

  _sliderWidget() {
    return Slider(
      activeColor: CustomColor.primaryLightColor,
      value: 0.7,
      onChanged: (value) {},
    );
  }

  _priceRangeTextWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.marginSizeVertical * 0.8,
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

  _outlineButtonList() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.4),
      child: Row(
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
      ),
    );
  }

  _inquiryFormWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        const CustomInquiryFormWidget(hintText: "Title"),
        _messageBoxWidget(),
        verticalSpace(Dimensions.heightSize),
      ],
    );
  }

  _messageBoxWidget() {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.heightSize * 0.55),
      child: const MessageBoxInquiryFormWidget(hintText: "Description"),
    );
  }

  _sellAndRentButtonWidget() {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.marginSizeVertical),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          const TitleHeading3Widget(text: Strings.addfor),
          SizedBox(
            height: Dimensions.heightSize * 3.5,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                    width: Dimensions.widthSize * 8,
                    decoration: const BoxDecoration(
                      color: CustomColor.secondaryLightColor,
                    ),
                    child: Obx(
                      () => GestureDetector(
                        onTap: () {
                          _controller.sellAndRentButtonOnChange(index);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: _controller.myIndex.value == index
                                  ? CustomColor.primaryLightColor
                                  : Colors.transparent),
                          child: TitleHeading2Widget(
                            text: _controller.buttonTextList[index],
                            color: _controller.myIndex.value == index
                                ? CustomColor.whiteColor
                                : CustomColor.primaryDarkColor,
                            fontSize: Dimensions.headingTextSize3,
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
