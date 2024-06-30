import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:shopsphere/features/authentication/screens/signup/signup.dart';
import 'package:shopsphere/navigation_menu.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

import '../../../../../utils/constants/text_strings.dart';

class SLoginForm extends StatelessWidget {
  const SLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: SSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: STexts.email),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelText: STexts.password),
            ),
            const SizedBox(
              height: SSizes.spaceBtwInputFields / 2,
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(STexts.rememberMe)
                  ],
                ),
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(STexts.forgetPassword))
              ],
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(STexts.signIn)),
            ),
            const SizedBox(
              height: SSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text(STexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
