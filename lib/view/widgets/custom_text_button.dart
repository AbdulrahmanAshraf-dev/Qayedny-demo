import 'package:flutter/Material.dart';
import '../../constance.dart';

class CustomTextButton extends StatelessWidget {

  final String text;
  final Color color;

  CustomTextButton(
      this.text,
      this.color
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                  offset: Offset(3, 4),
                  color: primaryColor
              ),
              ]
          ),
          child: SizedBox( height: 50, width: 360,
            child: TextButton(
              onPressed: (){},
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              style: TextButton.styleFrom(
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                          color: primaryColor
                      )
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }
}
