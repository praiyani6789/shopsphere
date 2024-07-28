
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shopsphere/common/widgets/images/s_rounded_images.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/icon/s_circular_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SProductImageSlider extends StatelessWidget {
  const SProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SCurvedEdgeWidget(
      child: Container(
        color:
            dark ? const Color.fromARGB(255, 93, 93, 93) : SColors.light,
        child: Stack(
          children: [
            //Main Large Image
            SizedBox(
                height: 400,
                child: Padding(
                  padding:
                      const EdgeInsets.all(SSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(
                          image: AssetImage(SImages.productImage5))),
                )),
    
            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: SSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: SSizes.spaceBtwItems),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => SRoundedImage(
                    width: 80,
                    backgroundColor: dark ? SColors.dark : SColors.white,
                    border: Border.all(color: SColors.primary),
                    padding: const EdgeInsets.all(SSizes.sm),
                    imageUrl: SImages.productImage3,
                  ),
                ),
              ),
            ),
    
            //Appbar Icons
            const SAppBar(
              showBackArrow: true,
              actions: [
                SCircularIcon(icon: Iconsax.heart5, color: Colors.red)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
