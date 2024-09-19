import 'package:get/get.dart';

class FollowButtonController extends GetxController {
  RxString isFollowing = "Follow".obs;

   toggleFollow(index) {
    isFollowing.value == index;
  }
}
