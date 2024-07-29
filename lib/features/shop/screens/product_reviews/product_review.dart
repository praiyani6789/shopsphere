import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/products/ratings/rating_indicator.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/device/device_utility.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: SAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              SizedBox(height: SSizes.spaceBtwItems),

              //Overall Product Rating
              SOverallProductRating(),
              SRatingBarIndicator(rating: 3.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              SizedBox(height: SSizes.spaceBtwSections),

              //User Reviews List
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
