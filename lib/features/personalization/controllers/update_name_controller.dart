import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopsphere/data/repositories/user/user_repository.dart';
import 'package:shopsphere/features/personalization/controllers/user_controller.dart';
import 'package:shopsphere/features/personalization/screens/profile/profile.dart';
import 'package:shopsphere/utils/popups/loaders.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/network_manager.dart';
import '../../../utils/popups/full_screen_loader.dart';

class updateNameController extends GetxController {
  static updateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  //Fetch user record
  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      //Start Loading
      SFullScreenLoader.openLoadingDialog(
          'We are updating your information...', SImages.docerAnimation);

      //Check Net
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //update user.s first & last name in the Firebase Firestore
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);

      //update Rx user value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      //Remove Loader
      SFullScreenLoader.stopLoading();

      //Show success message
      SLoaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated.');

      //move to previous screen
      Get.off(() => const ProfileScreen());
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
