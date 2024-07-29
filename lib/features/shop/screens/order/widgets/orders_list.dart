import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SOrderListItems extends StatelessWidget {
  const SOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: SSizes.spaceBtwItems),
      itemBuilder: (_, __) => SRoundedContaniner(
        showBorder: true,
        padding: EdgeInsets.all(SSizes.md),
        backgroundColor: dark ? SColors.dark : SColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Row--1
            Row(
              children: [
                //Icon
                Icon(Iconsax.ship),
                SizedBox(width: SSizes.spaceBtwItems / 2),

                //Status & Date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: SColors.primary, fontWeightDelta: 1),
                      ),
                      Text('07 Jul 2024',
                          style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                //Icon
                IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.arrow_right_34, size: SSizes.iconSm))
              ],
            ),
            SizedBox(height: SSizes.spaceBtwItems),

            //Row--2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.tag),
                      SizedBox(width: SSizes.spaceBtwItems / 2),

                      //Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('[#253f4]',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      //Icon
                      Icon(Iconsax.calendar),
                      SizedBox(width: SSizes.spaceBtwItems / 2),

                      //Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium),
                            Text('10 jul 2024',
                                style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
