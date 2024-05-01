import 'package:interview/constants/app_imports.dart';
import 'package:interview/controllers/add_controller.dart';

class AddScreen extends GetWidget<AddController> {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Interview",
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: Column(
            children: [
              const FormFieldWidget(AppStrings.nameText),
              const GapWidget(5),
              const FormFieldWidget(AppStrings.ageText),
              const GapWidget(5),
              const FormFieldWidget(AppStrings.nationalityIDText),
              const GapWidget(5),
              const FormFieldWidget(AppStrings.birthDateText),
              const GapWidget(5),
              ElevatedButton(
                onPressed: () async {
                  if (controller.formKey.currentState!.validate()) {
                    await controller.appDatabaseInstance.insertPerson(
                      {
                        'name': controller.name,
                        'age': controller.age,
                        'nationalityID': controller.nationalID,
                        'birthDate': controller.birthDate,
                      },
                    );
                    controller.refreshPersons();
                    print(controller.myPersons);
                  }
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
