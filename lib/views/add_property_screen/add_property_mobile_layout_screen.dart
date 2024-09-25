import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xproperty/widgets/custom_app_bar.dart';
import 'package:xproperty/widgets/section_header_dropdown_widget.dart';
import 'package:xproperty/widgets/search_bar_dropdown.dart';
import '../../controller/add_property/poneNumberController.dart';
import '../../controller/dropdown/dropdown_controller.dart';
import '../../controller/filters_screen/button_color_controlller.dart';
import '../../controller/filters_screen/slider_controller.dart';
import '../../language/language.dart';
import '../../routes/routes.dart';
import '../../widgets/Custom_slider_widget.dart';
import '../../widgets/add_button_container.dart';
import '../../widgets/common/buttons/primary_button.dart';
import '../../widgets/common/text_lebels/title_heading2_widget.dart';
import '../../widgets/common/text_lebels/title_heading3_widget.dart';
import '../../widgets/custom_inquiry_form_widget.dart';
import '../../widgets/fgarden_filter_button_widget.dart';
import '../../widgets/message_box_inquiry_form_widget.dart';
import '../../widgets/number_container_widget.dart';
import '../../widgets/outline_button_widget.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';
import '../utils/size.dart';

class AddPropertyMobileLayoutScreen extends StatelessWidget {
  AddPropertyMobileLayoutScreen({super.key});

  final _controller = Get.put(ButtonColorController());
  final _sliderController = Get.put(SliderController());
  final ddController = Get.put(DropdownController2());
  final PhoneNumberController controller = Get.put(PhoneNumberController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          statusBarColor: CustomColor.primaryLightColor,
          title: Strings.addProperty),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSize * 0.9,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            _sellAndRentButtonWidget(),
            _titleAndDescriptionFormWidget(),
            PriceSectionHeaderDropDownWidget(title: Strings.price),
            const CustomInquiryFormWidget(hintText: "Area"),
            PriceSectionHeaderDropDownWidget(title: Strings.price),
            const CustomInquiryFormWidget(hintText: "0.00"),
            _propertyTypeTextAndButtonWidget(),
            _priceRangeTextWidget(),
            CustomSliderWidget(controller: _sliderController),
            _bedroomsTextAndNumberedContainerWidget(),
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

  _bedroomsTextAndNumberedContainerWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TitleHeading3Widget(
            padding: EdgeInsets.symmetric(
                vertical: Dimensions.marginSizeVertical * 0.2),
            text: Strings.bedrooms),
        NumberedContainer(),
      ],
    );
  }

  _propertyTypeTextAndButtonWidget() {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Dimensions.marginSizeVertical * 0.5),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          const TitleHeading3Widget(text: Strings.propertiesType),
          verticalSpace(Dimensions.marginSizeVertical * 0.3),
          SizedBox(
            height: Dimensions.heightSize * 2.6,
            child: ListView(
              scrollDirection: Axis.horizontal,
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
                  title: Strings.commercial,
                ),
                OutlineButtonWidget(
                    index: 2,
                    onPressed: () {
                      _controller.outlineButtonOnchange(2);
                    },
                    title: Strings.industrial),
              ],
            ),
          )
        ],
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
      crossAxisAlignment: crossStart,
      children: [
        Padding(
          padding: EdgeInsets.only(top: Dimensions.marginSizeVertical * 0.5),
          child: const TitleHeading3Widget(text: Strings.contactInfo),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: Dimensions.marginSizeVertical * 0.4),
          child: const CustomInquiryFormWidget(hintText: Strings.email),
        ),
        Row(
          children: [
            Container(
              height: Dimensions.heightSize * 3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius * 2.5),
                  border: Border.all(
                      width: 1.5, color: CustomColor.primaryLightColor)),
              child: Row(
                children: [
                  CountryCodePicker(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    showFlag: false,
                    onChanged: (CountryCode countryCode) {
                      controller.setCountryCode(countryCode.toString());
                    },
                    initialSelection: 'US',
                    textStyle:
                        const TextStyle(color: CustomColor.secondaryLightColor),
                  ),
                ],
              ),
            ),
            horizontalSpace(Dimensions.marginSizeHorizontal * 0.5),
            const Expanded(
              child: CustomInquiryFormWidget(
                  keyboardType: TextInputType.number,
                  hintText: Strings.phoneNumber),
            ),
          ],
        )
      ],
    );
  }

  addressFormWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        PriceSectionHeaderDropDownWidget(title: Strings.address),
        Padding(
          padding: EdgeInsets.only(bottom: Dimensions.marginSizeVertical * 0.2),
          child:
              const CustomInquiryFormWidget(hintText: Strings.addressHouseNo),
        ),
        MySearchBarDropdownWidget(
          hintText: Strings.chooseProvince,
        ),
        MySearchBarDropdownWidget(
          hintText: Strings.chooseProvince,
        ),
        MySearchBarDropdownWidget(
          hintText: Strings.chooseCity,
        ),
        MySearchBarDropdownWidget(
          hintText: Strings.state,
        ),
        MySearchBarDropdownWidget(
          hintText: Strings.street,
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

  _buttonWidget() {
    return Padding(
      padding: EdgeInsets.only(
          top: Dimensions.paddingSize, bottom: Dimensions.paddingSize),
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

  _titleAndDescriptionFormWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        const CustomInquiryFormWidget(hintText: "Title"),
        _messageBoxWidget(),
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
