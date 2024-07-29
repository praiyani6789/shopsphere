import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopsphere/common/widgets/products/cart/cart_item.dart';
import 'package:shopsphere/common/widgets/texts/product_price_text.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SCartItems extends StatelessWidget {
  const SCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: SSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const SCartItem(),
          if (showAddRemoveButton) const SizedBox(height: SSizes.spaceBtwItems),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Extra Space
                    SizedBox(width: 70),
                    //Add Remove Buttons
                    SProductQuantityWithAddRemoveButton(),
                  ],
                ),
                SProductPriceText(price: '750')
              ],
            )
        ],
      ),
    );
  }
}
