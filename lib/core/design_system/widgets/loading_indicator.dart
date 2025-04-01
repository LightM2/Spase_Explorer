import 'package:flutter/material.dart';

class SpaseLoadingIndicator extends StatelessWidget {
  const SpaseLoadingIndicator({
    this.color = Colors.black,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        SizedBox.square(
          dimension: 20,
          child: CircularProgressIndicator(color: color, strokeWidth: 2),
        ),
      ],
    );
  }
}
