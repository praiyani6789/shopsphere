import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/helpers/network_manager.dart';
import 'package:shopsphere/utils/popups/full_screen_loader.dart';
import 'package:shopsphere/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //Var
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>();

  //SIGNUP
  Future<void> signup() async {
    try {
      //Start Loading
      SFullScreenLoader.openLoadingDialog(
          'We are processing your information...', SImages.docerAnimation);

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //Form Validation
      if (!signupFormkey.currentState!.validate()) return;

      //Privacy Policy check
      if (!privacyPolicy.value) {
        SLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account,you must have to read and accept the privacy Policy & Terns of Use.');
        return;
      }

      //video-35  28:25
    } catch (e) {
      //Show error
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      SFullScreenLoader.stopLoading();
    }
  }
}
