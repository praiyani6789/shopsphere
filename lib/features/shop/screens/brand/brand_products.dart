import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/brand/brand_card.dart';
import 'package:shopsphere/common/widgets/products/sortable/sortable_products.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SAppBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Brand Detail
              SBrandCard(showBorder: true),
              SizedBox(height: SSizes.spaceBtwSections),

              SSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
