import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/order_details_screen/models/order_details_model.dart';

/// A controller class for the OrderDetailsScreen.
///
/// This class manages the state of the OrderDetailsScreen, including the
/// current orderDetailsModelObj
class OrderDetailsController extends GetxController {
  Rx<OrderDetailsModel> orderDetailsModelObj = OrderDetailsModel().obs;
}
