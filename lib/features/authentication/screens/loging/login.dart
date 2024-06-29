import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/common/styles/spacing_styles.dart';
import 'package:shopsphere/common/widgets/login_signup/form_divider.dart';
import 'package:shopsphere/common/widgets/login_signup/social_button.dart';
import 'package:shopsphere/features/authentication/screens/loging/widgets/login_form.dart';
import 'package:shopsphere/features/authentication/screens/loging/widgets/login_header.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Header
              const SLoginHeader(),

              //Form
              const SLoginForm(),

              //Divider
              SFormDivider(driverText: STexts.orSignInWith.capitalize!),
              const SizedBox(height: SSizes.spaceBtwSections),

              //Footer
              const SSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
