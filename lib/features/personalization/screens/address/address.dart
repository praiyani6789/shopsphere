import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/features/personalization/screens/address/add_new_address.dart';
import 'package:shopsphere/features/personalization/screens/address/widgets/single_address.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: Icon(Iconsax.add, color: SColors.white),
        backgroundColor: SColors.primary,
      ),
      appBar: SAppBar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            children: [
              SSinglrAddress(selectedAddress: true),
              SSinglrAddress(selectedAddress: false),
              SSinglrAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
