import 'package:flutter/material.dart';
import 'package:shopsphere/utils/constants/colors.dart';
import 'package:shopsphere/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shopsphere/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:shopsphere/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:shopsphere/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:shopsphere/utils/theme/custom_themes/text_field_theme.dart';
import 'package:shopsphere/utils/theme/custom_themes/text_theme.dart';

class SAppTheme {
  SAppTheme._();

  static ThemeData ligthTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: SColors.white,
    textTheme: STextTheme.lightTextTheme,
    checkboxTheme: SCheckboxThem.lightCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightEtevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.lightlnputDecorationTheme,
  );
  static ThemeData dartTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: SColors.black,
    textTheme: STextTheme.darkTextTheme,
    checkboxTheme: SCheckboxThem.darkCheckboxTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkEtevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darklnputDecorationTheme,
  );
}
