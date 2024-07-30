import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/layouts/grid_layout.dart';
import 'package:shopsphere/common/widgets/products/product_cards/procuct_card_vertical.dart';
import 'package:shopsphere/common/widgets/products/sortable/sortable_products.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: SSortableProducts(),
        ),
      ),
    );
  }
}
