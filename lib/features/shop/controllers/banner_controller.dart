import 'package:get/get.dart';
import 'package:shopsphere/data/repositories/banners/banner_repository.dart';
import 'package:shopsphere/features/shop/models/banner_model.dart';
import 'package:shopsphere/utils/popups/loaders.dart';

class BannerController extends GetxController {
  final isLoading = false.obs;
  final carousalCurrentIndex = 0.obs;
  RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  //Load category data
  Future<void> fetchBanners() async {
    try {
      //Show Loader
      isLoading.value = true;

      //Fetch Banners
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      //Assign Banners
      this.banners.assignAll(banners);

    } catch (e) {
      SLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //Remove Loader
      isLoading.value = false;
    }
  }
}
