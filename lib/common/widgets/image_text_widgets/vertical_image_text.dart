import 'package:flutter/material.dart';
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
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: SSizes.spaceBtwItems),
        child: Column(
          children: [
            //Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(SSizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? SColors.black : SColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                  child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? SColors.light : SColors.dark,
              )),
            ),

            //Text
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
