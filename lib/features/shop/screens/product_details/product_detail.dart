import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:shopsphere/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:shopsphere/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:shopsphere/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:shopsphere/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/product_review.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const SBottomAddToCart(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          //1-Product Image Slider
          const SProductImageSlider(),

          //2-Product details
          Padding(
            padding: const EdgeInsets.only(
                right: SSizes.defaultSpace,
                left: SSizes.defaultSpace,
                bottom: SSizes.defaultSpace),
            child: Column(
              children: [
                //Rating & Share Button
                const SRatingAndShare(),

                //Price, Title, Stock & Brand
                const SProductMetaData(),

                //Attributes
                const SProductAttributes(),
                const SizedBox(height: SSizes.spaceBtwSections),

                //chechout Button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout'))),
                const SizedBox(height: SSizes.spaceBtwSections),

                //Description
                const SSectionHeading(
                    title: 'Description', showActionButton: false),
                const SizedBox(height: SSizes.spaceBtwItems),
                const ReadMoreText(
                  'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am not create database so not added currently',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' Show more',
                  trimExpandedText: ' Less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                //Reviews
                const Divider(),
                const SizedBox(height: SSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SSectionHeading(
                        title: 'Review (138)', showActionButton: false),
                    IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewScreen()),
                        icon: const Icon(Iconsax.arrow_right_3)),
                  ],
                ),
                const SizedBox(height: SSizes.spaceBtwSections),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
