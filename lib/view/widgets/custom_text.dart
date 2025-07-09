import 'package:flutter/Material.dart';
import 'package:qayedny_demo/constance.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  CustomText({
    this.text="",
    this.fontSize=16,
    this.color=primaryColor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          text,
        style: TextStyle(
          color: color,
          fontSize: fontSize
        ),
      ),
    );
  }
}
