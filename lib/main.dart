import 'package:interview/constants/app_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppStrings.homeRoute,
      initialBinding: AppBindings(),
      getPages: appPages,
    );
  }
}
