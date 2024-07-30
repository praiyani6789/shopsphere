import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/appbar/appbar.dart';
import 'package:shopsphere/common/widgets/products/ratings/rating_indicator.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: const SAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: SSizes.spaceBtwItems),

              //Overall Product Rating
              const SOverallProductRating(),
              const SRatingBarIndicator(rating: 3.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: SSizes.spaceBtwSections),

              //User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
