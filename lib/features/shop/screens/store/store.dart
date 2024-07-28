import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/appbar/tabbar.dart';
import 'package:shopsphere/common/widgets/brand/brand_card.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shopsphere/common/widgets/layouts/grid_layout.dart';
import 'package:shopsphere/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/features/shop/screens/store/widgets/category_tab.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: SAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            SCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: SHelperFunctions.isDarkMode(context)
                    ? SColors.black
                    : SColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(SSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //Search bar
                      const SizedBox(height: SSizes.spaceBtwItems),
                      const SSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: SSizes.spaceBtwSections),

                      //Featured Brands
                      SSectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(height: SSizes.spaceBtwItems / 1.5),

                      SGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return SBrandCard(showBorder: true);
                          })
                    ],
                  ),
                ),

                //Tabs
                bottom: const STabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              )
            ];
          },

          //Body
          body: const TabBarView(
            children: [
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab(),
              SCategoryTab()
            ],
          ),
        ),
      ),
    );
  }
}
