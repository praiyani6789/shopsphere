import 'package:flutter/material.dart';
import 'package:shopsphere/common/widgets/shimmers/shimmer.dart';
import 'package:shopsphere/utils/constants/sizes.dart';

class SCategoryShimmer extends StatelessWidget {
  const SCategoryShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
            const SizedBox(width: SSizes.spaceBtwItems),
        itemBuilder: (_, __) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Images
              SShimmerEffect(width: 55, height: 55, radius: 55),
              SizedBox(height: SSizes.spaceBtwItems / 2),

              //Texts
              SShimmerEffect(width: 55, height: 8),
            ],
          );
        },
      ),
    );
  }
}
