import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/features/authentication/controllers/onboarding_controller.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/device/device_utility.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Positioned(
      right: SSizes.defaultSpace,
      bottom: SDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? SColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
