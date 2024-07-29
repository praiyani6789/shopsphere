import 'package:flutter/material.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SBillingAmountSection extends StatelessWidget {
  const SBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //subTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹750.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),

        //Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹40.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹10.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),
        //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹800.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),
      ],
    );
  }
}
