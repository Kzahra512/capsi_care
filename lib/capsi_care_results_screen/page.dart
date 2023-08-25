import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../app_color.dart';
import 'controller.dart';
class CCResultsScreen extends GetView<ResultsScreenController> {
  CCResultsScreen({Key? key}) : super(key: key);
  final ResultsScreenController resultsController=Get.put(ResultsScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: greenColor,
        title: Text(
          'Results',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 19.sp,
            wordSpacing: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),    );
  }
}