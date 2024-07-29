import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/icon/s_circular_icon.dart';
import 'package:shopsphere/common/widgets/images/s_rounded_images.dart';
import 'package:shopsphere/common/widgets/products/cart/add_remove_button.dart';
import 'package:shopsphere/common/widgets/products/cart/cart_item.dart';
import 'package:shopsphere/common/widgets/texts/product_price_text.dart';
import 'package:shopsphere/common/widgets/texts/product_title_text.dart';
import 'package:shopsphere/common/widgets/texts/s_brand_title_with_verified_icon.dart';
import 'package:shopsphere/features/shop/screens/checkout/checkout.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),

        //Item in Cart
        child: SCartItem(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout ₹750.0')),
      ),
    );
  }
}
