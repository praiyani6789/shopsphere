import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopsphere/data/repositories/authentication/authentication_repository.dart';
import 'package:shopsphere/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:shopsphere/utils/helpers/network_manager.dart';
import 'package:shopsphere/utils/popups/full_screen_loader.dart';
import 'package:shopsphere/utils/popups/loaders.dart';

import '../../../../utils/constants/image_strings.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //var
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  //send Reset Pass Mail
  sendPasswordResetEmail() async {
    try {
      //Start Loading
      SFullScreenLoader.openLoadingDialog(
          'Processing your request...', SImages.docerAnimation);

      //Check net
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Send email to reset pass
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      //Remove loader
      SFullScreenLoader.stopLoading();

      //Show Success Screen
      SLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email Link Sent to Reset your Password'.tr);

      //Redirect
      Get.to(() => ResetPassword(email: email.text.trim()));
    } catch (e) {
      //Remove loader
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //Start Loading
      SFullScreenLoader.openLoadingDialog(
          'Processing your request...', SImages.docerAnimation);

      //Check net
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Send email to reset pass
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //Remove loader
      SFullScreenLoader.stopLoading();

      //Show Success Screen
      SLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email Link Sent to Reset your Password'.tr);
    } catch (e) {
      //Remove loader
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
