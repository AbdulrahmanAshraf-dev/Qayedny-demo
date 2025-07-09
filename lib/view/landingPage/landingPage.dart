import 'package:flutter/Material.dart';
import 'package:qayedny_demo/constance.dart';
import 'package:qayedny_demo/view/widgets/custom_text.dart';
import 'package:qayedny_demo/view/widgets/custom_text_button.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("Assets/s1.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(44),
            child: Column(
              children: [
                Text(
                  "Unlock Your Potential opportunities with an Internship at Qayedny",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..color=primaryColor
                      ..strokeWidth=2,
                    fontSize: 22
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text(
                    "At Qayedny, we believe that internships are the gateway to a successful career. Joining our internship can make a significant impact on your professional journey",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..color=primaryColor
                          ..strokeWidth=2,
                        fontSize: 22
                    ),
                  ),
                ),
                SizedBox(height: 250),
                Column(
                  children: [
                    CustomTextButton("Subscribe now", Colors.white),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: CustomTextButton("Explore", Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
