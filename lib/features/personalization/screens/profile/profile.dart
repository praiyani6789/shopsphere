import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/images/s_circular_images.dart';
import 'package:shopsphere/common/widgets/texts/section_heading.dart';
import 'package:shopsphere/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

import '../../controllers/user_controller.dart';
import 'widgets/change_name.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const SAppBar(showBackArrow: true, title: Text('Profile')),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(children: [
            //Profile Picture
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SCircularImage(
                      image: SImages.user, width: 80, height: 80),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),
            ),

            //Details
            const SizedBox(height: SSizes.spaceBtwItems / 2),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwItems),

            //Heading Profile Info
            const SSectionHeading(
                title: 'Profile Information', showActionButton: false),
            const SizedBox(height: SSizes.spaceBtwItems),

            SProfileMenu(
                title: 'Name',
                value: controller.user.value.fullName,
                onPressed: () => Get.to(() => const ChangeName())),
            SProfileMenu(
                title: 'Username',
                value: controller.user.value.username,
                onPressed: () {}),

            const SizedBox(height: SSizes.spaceBtwItems),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwItems),

            //Heading Personal Info
            const SSectionHeading(
                title: 'Personal Information', showActionButton: false),
            const SizedBox(height: SSizes.spaceBtwItems),

            SProfileMenu(
                title: 'User ID',
                value: controller.user.value.id,
                icon: Iconsax.copy,
                onPressed: () {}),
            SProfileMenu(
                title: 'E-mail',
                value: controller.user.value.email,
                onPressed: () {}),
            SProfileMenu(
                title: 'Phone',
                value: controller.user.value.phoneNumber,
                onPressed: () {}),
            SProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
            SProfileMenu(
                title: 'Date of Birth',
                value: '10 Oct, 2003',
                onPressed: () {}),
            const Divider(),
            const SizedBox(height: SSizes.spaceBtwItems),

            Center(
              child: TextButton(
                onPressed: () => controller.deleteAccountWarningPopup(),
                child: const Text('Close Account',
                    style: TextStyle(color: Colors.red)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
