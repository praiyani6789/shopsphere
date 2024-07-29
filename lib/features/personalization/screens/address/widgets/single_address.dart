import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SSinglrAddress extends StatelessWidget {
  const SSinglrAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return SRoundedContaniner(
      width: double.infinity,
      showBorder: true,
      padding: EdgeInsets.all(SSizes.md),
      backgroundColor: selectedAddress
          ? SColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? SColors.darkGrey
              : SColors.grey,
      margin: const EdgeInsets.only(bottom: SSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? SColors.light
                      : SColors.dark.withOpacity(0.8)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Prince Raiyani',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: SSizes.sm / 2),
              Text(
                '(+91) 9409370595',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: SSizes.sm / 2),
              Text(
                'R-104, Navkar Palace, Surat, Gujarat, India.',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
