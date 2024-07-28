import 'package:flutter/material.dart';
import 'package:shopsphere/utils/constants/colors.dart';

class SShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: SColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horozontalProductShadow = BoxShadow(
      color: SColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
