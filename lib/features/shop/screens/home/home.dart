import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopsphere/common/widgets/layouts/grid_layout.dart';
import 'package:shopsphere/common/widgets/products/product_cards/procuct_card_vertical.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/features/shop/screens/all_products/all_products.dart';
import 'package:shopsphere/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shopsphere/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shopsphere/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SPrimaryHeaderContainer(
              child: Column(
                children: [
                  //AppBar
                  SHomeAppBar(),
                  SizedBox(height: SSizes.spaceBtwSections),

                  //SearchBar
                  SSearchContainer(text: 'Search in Store'),
                  SizedBox(height: SSizes.spaceBtwSections),

                  //Categories
                  Padding(
                      padding: EdgeInsets.only(left: SSizes.defaultSpace),
                      child: Column(
                        children: [
                          //Heading
                          SSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white,
                          ),
                          SizedBox(height: SSizes.spaceBtwItems),

                          //categarie
                          SHomeCategories(),
                        ],
                      )),
                  SizedBox(height: SSizes.spaceBtwSections),
                ],
              ),
            ),

            //Body in white
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  //Promo Slider
                  const SPromoSlider(
                    banners: [
                      SImages.banner1,
                      SImages.banner2,
                      SImages.banner3,
                      SImages.banner4,
                      SImages.banner5
                    ],
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections),

                  //Heading
                  SSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  //Popular Products
                  SGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const SProductCardVetical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
