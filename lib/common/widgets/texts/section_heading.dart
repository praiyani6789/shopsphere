
import 'package:flutter/material.dart';

class SSectionHeading extends StatelessWidget {
  const SSectionHeading({
    super.key,
    this.onPressed,
    this.textColor,
    this.buttontitle = 'View all',
    required this.title,
    this.showActionButton = true,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttontitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttontitle)),
      ],
    );
  }
}
