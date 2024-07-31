import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/data/repositories/authentication/authentication_repository.dart';
import 'package:shopsphere/data/repositories/user/user_repository.dart';
import 'package:shopsphere/features/authentication/screens/signup/verify_email.dart';
import 'package:shopsphere/features/personalization/models/user_model.dart';
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
  void signup() async {
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

      //Register iser in firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: username.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '');

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      SFullScreenLoader.stopLoading();

      SLoaders.successSnackBar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue.');

      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      SFullScreenLoader.stopLoading();
      //Show error
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
