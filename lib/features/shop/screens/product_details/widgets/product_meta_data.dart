import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/common/widgets/images/s_circular_images.dart';
import 'package:shopsphere/common/widgets/texts/product_price_text.dart';
import 'package:shopsphere/common/widgets/texts/product_title_text.dart';
import 'package:shopsphere/common/widgets/texts/s_brand_title_with_verified_icon.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/enums.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SProductMetaData extends StatelessWidget {
  const SProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price & Sale Price
        Row(
          children: [
            //Sale Tag
            SRoundedContaniner(
              radius: SSizes.sm,
              backgroundColor: SColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: SSizes.sm, vertical: SSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: SColors.black),
              ),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),

            //Price
            Text(
              '₹1000',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: SSizes.spaceBtwItems),
            const SProductPriceText(price: '750', isLarge: true)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        //Title
        const SProductTitleText(title: 'Nike Sports T-Shirt'),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        //Stock Status
        Row(
          children: [
            const SProductTitleText(title: 'Status'),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 1.5),

        //Brand
        Row(
          children: [
            SCircularImage(
              image: SImages.nikeLogo,
              width: 32,
              height: 32,
              overlayColor: dark ? SColors.white : SColors.black,
            ),
            const SBrandTitleWithVerifiedIcon(
                title: 'Nike', brandTextSize: TextSizes.medium),
          ],
        )
      ],
    );
  }
}
