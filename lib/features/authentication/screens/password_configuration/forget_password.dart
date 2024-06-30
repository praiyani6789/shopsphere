import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';

import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(STexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.start),
            const SizedBox(
              height: SSizes.spaceBtwItems,
            ),
            Text(STexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.start),
            const SizedBox(
              height: SSizes.spaceBtwSections * 2,
            ),

            //Text field
            TextFormField(
              decoration: const InputDecoration(
                  labelText: STexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(
              height: SSizes.spaceBtwSections,
            ),

            //Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(STexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
