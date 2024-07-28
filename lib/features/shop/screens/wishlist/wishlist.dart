import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/icon/s_circular_icon.dart';
import 'package:shopsphere/common/widgets/layouts/grid_layout.dart';
import 'package:shopsphere/common/widgets/products/product_cards/procuct_card_vertical.dart';
import 'package:shopsphere/features/shop/screens/home/home.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
          title: Text('Wishlist',
              style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            SCircularIcon(
                icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()))
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const SProductCardVetical())
            ],
          ),
        ),
      ),
    );
  }
}
