import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/features/authentication/controllers/signup/signup_controller.dart';
import 'package:shopsphere/features/authentication/screens/signup/verify_email.dart';
import 'package:shopsphere/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';
import 'package:shopsphere/utils/validator/validation.dart';
import '../../../../../utils/constants/sizes.dart';

class SSignUpForm extends StatelessWidget {
  const SSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormkey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      SValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: STexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: SSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      SValidator.validateEmptyText('Last name', value),
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
            controller: controller.username,
            validator: (value) =>
                SValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
                labelText: STexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Email
          TextFormField(
            controller: controller.email,
            validator: (value) => SValidator.validateEmail(value),
            decoration: const InputDecoration(
                labelText: STexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Phone
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => SValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
                labelText: STexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: SSizes.spaceBtwInputFields),

          //Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => SValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: STexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye)),
              ),
            ),
          ),
          const SizedBox(height: SSizes.spaceBtwSections),

          //T&C Checkbox
          const STermAndConditionCheckbox(),

          const SizedBox(height: SSizes.spaceBtwSections),

          //Signup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => controller.signup(),
                child: const Text(STexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
