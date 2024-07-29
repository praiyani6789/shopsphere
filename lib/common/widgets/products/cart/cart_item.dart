import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/images/s_rounded_images.dart';
import 'package:shopsphere/common/widgets/texts/product_title_text.dart';
import 'package:shopsphere/common/widgets/texts/s_brand_title_with_verified_icon.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SCartItem extends StatelessWidget {
  const SCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Image
        SRoundedImage(
          imageUrl: SImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(SSizes.sm),
          backgroundColor: SHelperFunctions.isDarkMode(context)
              ? SColors.darkGrey
              : SColors.light,
        ),
        const SizedBox(width: SSizes.spaceBtwItems),

        //Title, Price, & Size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SBrandTitleWithVerifiedIcon(title: 'Nike'),
            Flexible(
              child:
                  SProductTitleText(title: 'Black Sports shoes', maxLines: 1),
            ),

            //Attribute
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '8"', style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        )
      ],
    );
  }
}
