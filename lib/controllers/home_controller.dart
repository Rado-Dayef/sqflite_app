import 'package:interview/constants/app_database.dart';
import 'package:interview/constants/app_imports.dart';

class HomeController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String age = "";
  String name = "";
  String birthDate = "";
  String nationalID = "";
  final AppDatabase appDatabaseInstance = AppDatabase.instance;
  List<Map<String, dynamic>> myPersons = [];

  @override
  onInit() {
    super.onInit();
    refreshPersons();
  }

  Future<void> refreshPersons() async {
    List<Map<String, dynamic>> persons = await appDatabaseInstance.getPersons();
    myPersons = persons;
  }
}
