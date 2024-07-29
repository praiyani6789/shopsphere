import 'package:flutter/material.dart';

class SBillingPaymentSection extends StatelessWidget {
  const SBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //subTotal
        Row(
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹750.0', style: Theme.of(context).textTheme.bodyMedium),

            //video-27 14:30
          ],
        )
      ],
    );
  }
}
