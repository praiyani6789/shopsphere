import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/brand/brand_show_case.dart';
import 'package:shopsphere/common/widgets/layouts/grid_layout.dart';
import 'package:shopsphere/common/widgets/products/product_cards/procuct_card_vertical.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class SCategoryTab extends StatelessWidget {
  const SCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Brand
              SBrandShowcase(images: [
                SImages.productImage1,
                SImages.productImage2,
                SImages.productImage3
              ]),
              const SizedBox(height: SSizes.spaceBtwItems),

              //Products
              SSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: SSizes.spaceBtwItems),

              SGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const SProductCardVetical()),
              const SizedBox(height: SSizes.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
