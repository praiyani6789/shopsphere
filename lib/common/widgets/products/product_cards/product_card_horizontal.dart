import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/common/widgets/icon/s_circular_icon.dart';
import 'package:shopsphere/common/widgets/images/s_rounded_images.dart';
import 'package:shopsphere/common/widgets/texts/product_price_text.dart';
import 'package:shopsphere/common/widgets/texts/product_title_text.dart';
import 'package:shopsphere/common/widgets/texts/s_brand_title_with_verified_icon.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SProductCardHorizontal extends StatelessWidget {
  const SProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        // boxShadow: [SShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(SSizes.productImageRadius),
        color: dark ? SColors.darkerGrey : SColors.lightContainer,
      ),
      child: Row(
        children: [
          //Thumbnail
          SRoundedContaniner(
            height: 120,
            padding: const EdgeInsets.all(SSizes.sm),
            backgroundColor: dark ? SColors.dark : SColors.light,
            child: Stack(
              children: [
                //Thumbnail Image
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: SRoundedImage(
                      imageUrl: SImages.productImage1, applyImageRadius: true),
                ),

                //Sale Tag
                Positioned(
                  top: 12,
                  child: SRoundedContaniner(
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
                ),

                //Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: SCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: SSizes.sm, left: SSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SProductTitleText(
                          title: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: SSizes.spaceBtwItems / 2),
                      SBrandTitleWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Pricing
                      const Flexible(child: SProductPriceText(price: '750')),
                      //Add to cart
                      Container(
                        decoration: const BoxDecoration(
                            color: SColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(SSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(SSizes.productImageRadius),
                            )),
                        child: const SizedBox(
                          width: SSizes.iconLg * 1.2,
                          height: SSizes.iconLg * 1.2,
                          child: Center(
                              child: Icon(Iconsax.add, color: SColors.white)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
