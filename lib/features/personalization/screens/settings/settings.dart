import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shopsphere/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:shopsphere/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/data/repositories/authentication/authentication_repository.dart';
import 'package:shopsphere/features/personalization/screens/address/address.dart';
import 'package:shopsphere/features/personalization/screens/profile/profile.dart';
import 'package:shopsphere/features/shop/screens/order/order.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            SPrimaryHeaderContainer(
                child: Column(
              children: [
                //AppBar
                SAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: SColors.white),
                  ),
                ),

                //User Profile Card
                SUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(height: SSizes.spaceBtwSections),
              ],
            )),

            //Body
            Padding(
              padding: const EdgeInsets.all(SSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  const SSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: SSizes.spaceBtwItems),

                  SSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  const SSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout'),
                  SSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Complete Orders',
                    onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const SSettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'My Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  const SSettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'),
                  const SSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notification message'),
                  const SSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),

                  //App Settings
                  const SizedBox(height: SSizes.spaceBtwSections),
                  const SSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: SSizes.spaceBtwItems),
                  const SSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),
                  SSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //Logout Button
                  const SizedBox(height: SSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        AuthenticationRepository.instance.logout();
                      },
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: SSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
