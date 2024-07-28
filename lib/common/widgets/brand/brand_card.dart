import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/common/widgets/images/s_circular_images.dart';
import 'package:shopsphere/common/widgets/texts/s_brand_title_with_verified_icon.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

import '../../../utils/constants/enums.dart';

class SBrandCard extends StatelessWidget {
  const SBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SRoundedContaniner(
        padding: const EdgeInsets.all(SSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: SCircularImage(
                isNetworkImage: false,
                image: SImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.white
                    : SColors.black,
              ),
            ),
            const SizedBox(height: SSizes.spaceBtwItems / 2),

            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
