import 'package:capsi_care/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_color.dart';
import 'controller.dart';

class CCSplashScreen extends GetView<SplashScreenController> {
  CCSplashScreen({Key? key}) : super(key: key);
  final SplashScreenController splashController =
      Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                height:40.h,
                width:80.w,child: Image.asset(AppImages.splashImage,fit: BoxFit.fill,)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Get Capsicum now and have the ultimate disease diagnosis and treatment',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18.sp,
              wordSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
