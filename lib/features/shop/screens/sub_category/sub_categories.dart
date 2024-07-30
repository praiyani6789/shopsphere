import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/images/s_rounded_images.dart';
import 'package:shopsphere/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SAppBar(title: Text('Sports shirt'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const SRoundedImage(
                width: double.infinity,
                imageUrl: SImages.banner3,
                applyImageRadius: true,
              ),
              const SizedBox(height: SSizes.spaceBtwSections),

              //Sub-Categories
              Column(
                children: [
                  //Heading
                  SSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: SSizes.spaceBtwItems / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: SSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const SProductCardHorizontal()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
