import 'package:flutter/material.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SDeviceUtils.getAppBarHeight(),
      right: SSizes.defaultSpace,
      child: TextButton(
        onPressed: () {},
        child: const Text('Skip'),
      ),
    );
  }
}