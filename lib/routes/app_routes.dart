import 'package:get/get.dart';
import 'package:shopsphere/features/authentication/screens/loging/login.dart';
import 'package:shopsphere/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shopsphere/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:shopsphere/features/authentication/screens/signup/signup.dart';
import 'package:shopsphere/features/authentication/screens/signup/verify_email.dart';
import 'package:shopsphere/features/personalization/screens/address/address.dart';
import 'package:shopsphere/features/personalization/screens/profile/profile.dart';
import 'package:shopsphere/features/personalization/screens/settings/settings.dart';
import 'package:shopsphere/features/shop/screens/cart/cart.dart';
import 'package:shopsphere/features/shop/screens/checkout/checkout.dart';
import 'package:shopsphere/features/shop/screens/order/order.dart';
import 'package:shopsphere/features/shop/screens/product_reviews/product_review.dart';
import 'package:shopsphere/features/shop/screens/store/store.dart';
import 'package:shopsphere/features/shop/screens/wishlist/wishlist.dart';
import 'package:shopsphere/routes/routes.dart';

import '../features/shop/screens/home/home.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: SRoutes.home, page: () => const HomeScreen()),

    GetPage(name: SRoutes.store, page: () => const StoreScreen()),

    GetPage(name: SRoutes.favourites, page: () => const FavouriteScreen()),

    GetPage(name: SRoutes.settings, page: () => const SettingsScreen()),

    GetPage(
        name: SRoutes.productReviews, page: () => const ProductReviewScreen()),

    GetPage(name: SRoutes.order, page: () => const OrderScreen()),
    GetPage(name: SRoutes.checkout, page: () => const CheckoutScreen()),

    GetPage(name: SRoutes.cart, page: () => const CartScreen()),

    GetPage(name: SRoutes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: SRoutes.userAddress, page: () => const UserAddressScreen()),

    GetPage(name: SRoutes.signup, page: () => const SignupScreen()),

    GetPage(name: SRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: SRoutes.signIn, page: () => const LoginScreen()),

    GetPage(name: SRoutes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: SRoutes.onBoarding, page: () => const OnBoardingScreen()),

// Add more GetPage entries as needed
  ];
}
