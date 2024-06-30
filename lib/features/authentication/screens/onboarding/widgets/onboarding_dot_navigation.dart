import 'package:flutter/material.dart';
import 'package:shopsphere/features/authentication/controllers/onboarding_controller.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/device/device_utility.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = SHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: SDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: SSizes.defaultSpace,
      child: SmoothPageIndicator(
        onDotClicked: controller.dotNavigationClick,
        controller: controller.pageController,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? SColors.light : SColors.dark, dotHeight: 6),
        count: 3,
      ),
    );
  }
}
