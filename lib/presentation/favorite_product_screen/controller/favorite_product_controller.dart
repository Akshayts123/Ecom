import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/favorite_product_screen/models/favorite_product_model.dart';

/// A controller class for the FavoriteProductScreen.
///
/// This class manages the state of the FavoriteProductScreen, including the
/// current favoriteProductModelObj
class FavoriteProductController extends GetxController {
  Rx<FavoriteProductModel> favoriteProductModelObj = FavoriteProductModel().obs;
}
