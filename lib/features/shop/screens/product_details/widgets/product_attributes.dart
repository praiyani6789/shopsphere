import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shopsphere/common/widgets/chips/choice_chip.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/common/widgets/texts/product_price_text.dart';
import 'package:shopsphere/common/widgets/texts/product_title_text.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class SProductAttributes extends StatelessWidget {
  const SProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        //Select Attribute Pricing & desc
        SRoundedContaniner(
          padding: EdgeInsets.all(SSizes.md),
          backgroundColor:
              dark ? Color.fromARGB(255, 93, 93, 93) : SColors.grey,
          child: Column(
            children: [
              //Title, Price and Strock Status
              Row(
                children: [
                  SSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(width: SSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SProductTitleText(title: 'Price : ', smallSize: true),
                          SizedBox(width: SSizes.spaceBtwItems),

                          //Actual Price
                          Text(
                            '₹1000',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: SSizes.spaceBtwItems),

                          //Sale Price
                          SProductPriceText(price: '750')
                        ],
                      ),

                      //Stock
                      Row(
                        children: [
                          SProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //Variation Desc
              const SProductTitleText(
                title:
                    'This is the Description of the Product and it can go upto max 4 line',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: SSizes.spaceBtwItems),

        //Atributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                SChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                SChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SSectionHeading(
              title: 'Sizes',
              showActionButton: false,
            ),
            SizedBox(height: SSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                SChoiceChip(text: '7', selected: false, onSelected: (value) {}),
                SChoiceChip(text: '8', selected: true, onSelected: (value) {}),
                SChoiceChip(text: '9', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}
