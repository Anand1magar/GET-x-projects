import 'package:get/get.dart';
import 'package:shoping_app/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProduct();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fatchProduct();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
