import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopsphere/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shopsphere/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.ligthTheme,
      darkTheme: SAppTheme.dartTheme,
      home: const OnBoardingScreen(),
    );
  }
}
