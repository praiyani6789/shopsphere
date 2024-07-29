import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SBillingAddressSection extends StatelessWidget {
  const SBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SSectionHeading(
            title: 'Shipping Address', buttontitle: 'Change', onPressed: () {}),
        Text('Prince Raiyani', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: SSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('+91-94093-70595',
                style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: SSizes.spaceBtwItems),
            Text('Navkar Palace, Surat, Gujarat, India.',
                style: Theme.of(context).textTheme.bodyMedium, softWrap: true)
          ],
        ),
        const SizedBox(height: SSizes.spaceBtwItems / 2),
      ],
    );
  }
}
