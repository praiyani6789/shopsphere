import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:shopsphere/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:shopsphere/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';
import 'package:shopsphere/utils/device/device_utility.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              OnBoardingPage(
                image: SImages.onBoardingImage1,
                title: STexts.onBoardingTitle1,
                subtitle: STexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage2,
                title: STexts.onBoardingTitle2,
                subtitle: STexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SImages.onBoardingImage3,
                title: STexts.onBoardingTitle3,
                subtitle: STexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          Positioned(
            right: SSizes.defaultSpace,
            bottom: SDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), backgroundColor: Colors.black),
              child: Icon(Iconsax.arrow_right_3),
            ),
          )
        ],
      ),
    );
  }
}
