import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/device/device_utility.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SSearchContainer extends StatelessWidget {
  const SSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SSizes.defaultSpace),
        child: Container(
            width: SDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(SSizes.md),
            decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? SColors.dark
                      : SColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(SSizes.cardRadiusLg),
              border: showBorder
                  ? Border.all(color: dark ? SColors.dark : SColors.grey)
                  : null,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: SColors.darkGrey,
                ),
                const SizedBox(width: SSizes.spaceBtwItems),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            )),
      ),
    );
  }
}
