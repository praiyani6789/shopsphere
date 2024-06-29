import 'package:flutter/material.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/constants/text_strings.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SLoginHeader extends StatelessWidget {
  const SLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? SImages.lightAppLogo : SImages.darkAppLogo),
        ),
        Text(STexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: SSizes.sm),
        Text(STexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}