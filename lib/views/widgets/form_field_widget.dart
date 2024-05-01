import 'package:interview/constants/app_imports.dart';

class FormFieldWidget extends StatelessWidget {
  final String label;

  const FormFieldWidget(
    this.label, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return AppStrings.plsEnterAText + label;
        }
        return null;
      },
    );
  }
}
