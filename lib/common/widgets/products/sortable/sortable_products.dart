
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/layouts/grid_layout.dart';
import 'package:shopsphere/common/widgets/products/product_cards/procuct_card_vertical.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SSortableProducts extends StatelessWidget {
  const SSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          decoration:
              const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lover Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) =>
                  DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: SSizes.spaceBtwSections),
    
        //Products
        SGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const SProductCardVetical())
      ],
    );
  }
}