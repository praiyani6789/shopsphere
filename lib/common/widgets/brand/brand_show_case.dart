import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/brand/brand_card.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SBrandShowcase extends StatelessWidget {
  const SBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SRoundedContaniner(
      showBorder: true,
      borderColor: SColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SSizes.md),
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with Product count
          const SBrandCard(showBorder: false),
          const SizedBox(height: SSizes.spaceBtwItems),

          //Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: SRoundedContaniner(
        height: 100,
        backgroundColor: SHelperFunctions.isDarkMode(context)
            ? SColors.darkGrey
            : SColors.light,
        margin: const EdgeInsets.only(right: SSizes.sm),
        padding: const EdgeInsets.all(SSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
