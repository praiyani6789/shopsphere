import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/products/cart/cart_item.dart';
import 'package:shopsphere/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:shopsphere/features/shop/screens/checkout/checkout.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

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
        padding: EdgeInsets.all(SSizes.defaultSpace),

        //Item in Cart
        child: SCartItems(showAddRemoveButton: true),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout ₹750.0')),
      ),
    );
  }
}
