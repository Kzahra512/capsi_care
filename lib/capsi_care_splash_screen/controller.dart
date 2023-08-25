import 'package:get/get.dart';
import '../capsi_care_upload_screen/page.dart';

class SplashScreenController extends GetxController {
  @override
  Future <void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 7), ()async {
      Get.offAll(CCUploadScreen());
    });
  }
}
