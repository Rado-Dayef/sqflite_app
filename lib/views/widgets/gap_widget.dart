import 'package:flutter/cupertino.dart';

class GapWidget extends StatelessWidget {
  final double gap;

  const GapWidget(this.gap, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap,
      width: gap,
    );
  }
}
