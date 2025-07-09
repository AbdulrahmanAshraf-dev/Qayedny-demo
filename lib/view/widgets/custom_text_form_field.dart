import 'package:flutter/Material.dart';
import 'package:qayedny_demo/constance.dart';
import 'package:qayedny_demo/view/widgets/custom_text.dart';

class CustomTextFormField extends StatelessWidget {

  final String text;
  final String hint;


  CustomTextFormField({
    this.text="",
    this.hint="",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: text,
            fontSize: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.shade200,
                ),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
