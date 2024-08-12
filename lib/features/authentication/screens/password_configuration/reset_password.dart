import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:shopsphere/features/authentication/screens/loging/login.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(SImages.deliveredEmailIllustration),
                width: SHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              //Title & Subtitle
              Text(email,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),

              Text(STexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwItems),

              Text(STexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text(STexts.done),
                ),
              ),
              const SizedBox(
                height: SSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => ForgetPasswordController.instance
                      .resendPasswordResetEmail(email),
                  child: const Text(STexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
