import 'package:flutter/Material.dart';
import '../../constance.dart';

class CustomTextLanding extends StatelessWidget {

  final String text;
  final double size;

  CustomTextLanding(this.text, this.size);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(44),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..color=primaryColor
                ..strokeWidth=2,
              fontSize: size
          ),
        ),
      ),
    );
  }
}
