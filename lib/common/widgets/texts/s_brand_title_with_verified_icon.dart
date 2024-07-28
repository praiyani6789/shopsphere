import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/texts/s_brand_title_text.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/enums.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SBrandTitleWithVerifiedIcon extends StatelessWidget {
  const SBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.iconColor = SColors.primary,
    this.textAlign = TextAlign.center,
    this.textColor,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: SSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: SSizes.iconXs)
      ],
    );
  }
}
