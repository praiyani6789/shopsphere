import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/images/s_circular_images.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SVerticalImageText extends StatelessWidget {
  const SVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = SColors.white,
    this.backgroundColor,
    this.onTap,
    this.isNetworImage = true,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final bool isNetworImage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SSizes.spaceBtwItems),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Adjust Column size
          children: [
            // Icon
            SCircularImage(
              image: image,
              fit: BoxFit.fitWidth,
              padding: SSizes.sm * 1.4,
              isNetworkImage: isNetworImage,
              backgroundColor: backgroundColor,
              overlayColor: dark ? SColors.light : SColors.dark,
            ),

            // Text
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Align(
                alignment: Alignment.center, // Center text within the SizedBox
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
