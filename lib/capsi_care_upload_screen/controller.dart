import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreenController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  RxString selectedImagePath = RxString('');

  Future<void> getImage(ImageSource source) async {
    final pickedImage = await _picker.pickImage(source: source);
    if (pickedImage != null) {
      selectedImagePath.value = pickedImage.path;
    }
  }
}
//   Future<void> pickImage(ImageSource source) async {
//     final pickedImage = await _picker.pickImage(source: source);
//
//     if (pickedImage != null) {
//       selectedImagePath.value = pickedImage.path;
//     }
//   }
// }
