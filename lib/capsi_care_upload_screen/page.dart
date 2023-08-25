// import 'package:capsi_care/app_color.dart';
// import 'package:capsi_care/app_images.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'controller.dart';
//
// class CCUploadScreen extends GetView<UploadScreenController> {
//   CCUploadScreen({Key? key}) : super(key: key);
//   final UploadScreenController uploadController =
//       Get.put(UploadScreenController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: greenColor,
//         title: Text(
//           'Upload Photo',
//           style: GoogleFonts.poppins(
//             color: Colors.white,
//             fontSize: 19.sp,
//             wordSpacing: 1,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 4.h),
//             Center(
//               child: Container(
//                 height: 32.h,
//                 width: 90.w,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16.0),
//                     color: Colors.white,
//                     border: Border.all(
//                       color: greenColor,
//                     )),
//                 child: Image.asset(
//                   AppImages.capsicum,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             SizedBox(height: 6.h),
//             Center(
//                 child: GestureDetector(
//                   onTap: () => uploadController.getImage(ImageSource.gallery),
//                   child: Container(
//                       height: 8.h,
//                       width: 90.w,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(16.0),
//                         color: Colors.white,
//                         border: Border.all(color: greenColor),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 2.w, vertical: 2.5.h),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               child: Icon(
//                                 Icons.add_a_photo_outlined,
//                                 color: greenColor,
//                                 size: 22.sp,
//                               ),
//                             ),
//                             Text(
//                               'Upload Photo From Gallery',
//                               style: GoogleFonts.poppins(
//                                 color: greenColor,
//                                 fontSize: 17.sp,
//                                 wordSpacing: 1,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(
//                               child: Icon(
//                                 Icons.arrow_forward_ios,
//                                 color: greenColor,
//                                 size: 20.sp,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                 ),
//                 ),
//             SizedBox(height: 2.h),
//
//             Center(
//               child: Container(
//                     height: 8.h,
//                     width: 90.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16.0),
//                       color: Colors.white,
//                       border: Border.all(color: greenColor),
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 2.w, vertical: 2.5.h),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             child: Icon(
//                               Icons.camera,
//                               color: greenColor,
//                               size: 22.sp,
//                             ),
//                           ),
//                           Text(
//                             'Upload Photo From Camera',
//                             style: GoogleFonts.poppins(
//                               color: greenColor,
//                               fontSize: 17.sp,
//                               wordSpacing: 1,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           SizedBox(
//                             child: Icon(
//                               Icons.arrow_forward_ios,
//                               color: greenColor,
//                               size: 20.sp,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//             SizedBox(height: 2.h),
//             Center(
//               child: Container(
//                 height: 8.h,
//                 width: 90.w,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(16.0),
//                     color: greenColor,
//                     border: Border.all(
//                       color: Colors.grey,
//                     )),
//                 child: Padding(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.5.h),
//                   child: Center(
//                     child: Text(
//                       'Submit',
//                       style: GoogleFonts.poppins(
//                         color: Colors.white,
//                         fontSize: 17.sp,
//                         wordSpacing: 1,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ]),
//     );
//   }
// }

import 'dart:io';

import 'package:capsi_care/app_color.dart';
import 'package:capsi_care/app_images.dart';
import 'package:capsi_care/capsi_care_results_screen/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'controller.dart';

class CCUploadScreen extends GetView<UploadScreenController> {
  CCUploadScreen({Key? key}) : super(key: key);
  final UploadScreenController uploadController =
  Get.put(UploadScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: greenColor,
        title: Text(
          'Upload Photo',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 19.sp,
            wordSpacing: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 4.h),
            Center(
              child: Container(
                height: 32.h,
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    border: Border.all(
                      color: greenColor,
                    )),
                child:Obx(() {
                  final imagePath = uploadController.selectedImagePath.value;
                  if (imagePath.isEmpty) {
                    return Image.asset(
                  AppImages.capsicum,
                  fit: BoxFit.fill,
                );
                  } else {
                    return Image.file(
                      File(imagePath),
                      fit: BoxFit.fill,
                    );
                  }
                }),
              ),
            ),
            SizedBox(height: 6.h),
            Center(
              child: GestureDetector(
                onTap: () => uploadController.getImage(ImageSource.gallery),
                child: Container(
                  height: 8.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    border: Border.all(color: greenColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.w, vertical: 2.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Icon(
                            Icons.add_a_photo_outlined,
                            color: greenColor,
                            size: 22.sp,
                          ),
                        ),
                        Text(
                          'Upload Photo From Gallery',
                          style: GoogleFonts.poppins(
                            color: greenColor,
                            fontSize: 17.sp,
                            wordSpacing: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: greenColor,
                            size: 20.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),

            Center(
              child: GestureDetector(
                onTap: () => uploadController.getImage(ImageSource.camera),
                child: Container(
                  height: 8.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    border: Border.all(color: greenColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.w, vertical: 2.5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Icon(
                            Icons.camera,
                            color: greenColor,
                            size: 22.sp,
                          ),
                        ),
                        Text(
                          'Upload Photo From Camera',
                          style: GoogleFonts.poppins(
                            color: greenColor,
                            fontSize: 17.sp,
                            wordSpacing: 1,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: greenColor,
                            size: 20.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            GestureDetector(
              onTap: (){
                Get.to(CCResultsScreen());
              },
              child: Center(
                child: Container(
                  height: 8.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: greenColor,
                      border: Border.all(
                        color: Colors.grey,
                      )),
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.5.h),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 17.sp,
                          wordSpacing: 1,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
