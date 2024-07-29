import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopsphere/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shopsphere/common/widgets/products/ratings/rating_indicator.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/constants/image_strings.dart';
import 'package:shopsphere/utils/constants/sizes.dart';
import 'package:shopsphere/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(SImages.userProfileImage1)),
                SizedBox(width: SSizes.spaceBtwItems),
                Text('Deep Gondaliya',
                    style: Theme.of(context).textTheme.titleLarge)
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems),

        //Review
        Row(
          children: [
            SRatingBarIndicator(rating: 4),
            SizedBox(width: SSizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        SizedBox(height: SSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: SColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: SColors.primary),
        ),
        SizedBox(height: SSizes.spaceBtwItems),

        //Company Review
        SRoundedContaniner(
          backgroundColor: dark ? SColors.darkGrey : SColors.grey,
          child: Padding(
              padding: EdgeInsets.all(SSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shopsphere',
                          style: Theme.of(context).textTheme.titleMedium),
                      Text('01 Nov, 2023',
                          style: Theme.of(context).textTheme.bodyMedium)
                    ],
                  ),
                  SizedBox(height: SSizes.spaceBtwItems),
                  ReadMoreText(
                    'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' show less',
                    trimCollapsedText: ' show more',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: SColors.primary),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: SColors.primary),
                  ),
                ],
              )),
        )
      ],
    );
  }
}
