import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopsphere/data/repositories/authentication/authentication_repository.dart';
import 'package:shopsphere/features/personalization/controllers/user_controller.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/helpers/network_manager.dart';
import 'package:shopsphere/utils/popups/full_screen_loader.dart';
import 'package:shopsphere/utils/popups/loaders.dart';

class LoginController extends GetxController {
  //var
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  //Email And Pass SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      //Start Loading
      SFullScreenLoader.openLoadingDialog(
          'Logging you in...', SImages.docerAnimation);

      //Check Net
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Form Validation
      if (!loginFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Save Data if Remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //Login user using Email & password
      final userCredentials = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //Remove Loader
      SFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  //Google SignIn
  Future<void> googleSignIn() async {
    try {
      //Start Loading
      SFullScreenLoader.openLoadingDialog(
          'Logging you in...', SImages.docerAnimation);

      //Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      //Google Auth
      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();

      //Save User Record
      await userController.saveUserRecord(userCredentials);

      //Remove Loader
      SFullScreenLoader.stopLoading();

      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
