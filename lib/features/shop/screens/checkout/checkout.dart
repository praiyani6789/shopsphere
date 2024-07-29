import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/common/widgets/products/cart/coupon_widget.dart';
import 'package:shopsphere/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:shopsphere/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: SAppBar(
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              //Item in Cart
              SCartItems(showAddRemoveButton: false),
              SizedBox(height: SSizes.spaceBtwSections),

              //Coupon TextField
              SCouponCode(),
              SizedBox(height: SSizes.spaceBtwSections),

              //Billing Section
              SRoundedContaniner(
                showBorder: true,
                padding: const EdgeInsets.all(SSizes.md),
                backgroundColor: dark ? SColors.black : SColors.white,
                child: Column(
                  children: [
                    //Pricing
                    SBillingPaymentSection(),
                    SizedBox(height: SSizes.spaceBtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: SSizes.spaceBtwItems),
                    //Payment Methods
                    //Address
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
