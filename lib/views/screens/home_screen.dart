import 'package:interview/constants/app_imports.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.toNamed(AppStrings.addRoute);
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: GridView.builder(
        itemCount: controller.myPersons.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Text(controller.myPersons[index]["name"]),
          );
        },
      ),
    );
  }
}
