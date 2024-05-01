import 'package:interview/constants/app_imports.dart';
import 'package:interview/views/screens/add_screen.dart';

List<GetPage> appPages = [
  GetPage(
    name: AppStrings.homeRoute,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppStrings.addRoute,
    page: () => const AddScreen(),
  ),
];
