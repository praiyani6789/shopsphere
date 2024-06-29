import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SSignUpForm extends StatelessWidget {
  const SSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: STexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: STexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: STexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Email
          TextFormField(
            decoration: const InputDecoration(
                labelText: STexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Phone
          TextFormField(
            decoration: const InputDecoration(
                labelText: STexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: STexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
                prefixIcon: Icon(Iconsax.password_check)),
          ),
          const SizedBox(height: SSizes.spaceBtwSections),

          //T&C Checkbox
          const STermAndConditionCheckbox(),

          const SizedBox(height: SSizes.spaceBtwSections),

          //Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(STexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
