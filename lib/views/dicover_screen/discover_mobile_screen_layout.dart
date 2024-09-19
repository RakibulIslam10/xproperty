import 'package:flutter/material.dart';
import '../../widgets/custom_app_bar_widget.dart';
import '../../widgets/custom_circular_container_widget.dart';
import '../../widgets/list_card_widget.dart';
import '../../widgets/listing_data.dart';
import '../drawer_menu_screen/drawer_menu_mobile_layout_screen.dart';
import '../utils/custom_color.dart';
import '../utils/dimensions.dart';

class DiscoverMobileScreenLayout extends StatelessWidget {
  const DiscoverMobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MyDrawerMenu(),
      body: _bodyWidget(),
    );
  }

  _bodyWidget() {
    return Stack(
      children: [
        _circularContainers(),
        Padding(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
          child: ListView.builder(
            itemCount: ListCustomDataList.productsDetails2.length,
            itemBuilder: (context, index) {
              final myData = ListCustomDataList.productsDetails2[index];
              return _listCardWidget(myData);
            },
          ),
        ),
      ],
    );
  }

  _circularContainers() {
    return const Stack(
      children: [
        CustomCircularContainer(
          top: 0,
          left: -10,
          size: 25,
        ),
        CustomCircularContainer(
          top: 0,
          left: 375,
          size: 30,
        ),
        CustomCircularContainer(
          top: 490,
          left: 370,
          size: 37,
        ),
        CustomCircularContainer(
          top: 350,
          left: 150,
          size: 50,
        ),
      ],
    );
  }


  _listCardWidget(Map<String, dynamic> myData) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimensions.heightSize * 0.1,
      ),
      child: Card(
        color: CustomColor.whiteColor,
        elevation: 4,
        child: ListCardItems(
          title: myData['title'],
          imageUrl: myData["imageUrl"],
          subTitle: myData["subTitle"],
          title2: myData["title2"],
          subTitle2: myData["subTitle2"],
        ),
      ),
    );
  }
}
