import 'package:interview/constants/app_imports.dart';
import 'package:interview/controllers/add_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(),
    );
    Get.lazyPut(
      () => AddController(),
    );
  }
}
