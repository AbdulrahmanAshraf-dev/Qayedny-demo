import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qayedny_demo/constance.dart';
import 'package:qayedny_demo/view/landingPage/landingPage.dart';
import 'package:qayedny_demo/view/widgets/custom_text.dart';
import 'package:qayedny_demo/view/widgets/custom_text_button.dart';
import 'package:qayedny_demo/view/widgets/custom_text_form_field.dart';

class Loginpage extends StatelessWidget {
  final bool isChecked = false;
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 157),
            child: Row(
              children: [
                Image.asset(
                    "Assets/Logo.png"
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Login",
                  fontSize: 30,
                ),
                SizedBox(height: 25),
                CustomTextFormField(
                  text: "Username or Email",
                  hint: "example@mail.com",
                ),
                SizedBox(height: 30),
                CustomTextFormField(
                  text: "Password",
                  hint: "**********",
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        activeColor: Colors.grey,
                        onChanged: (value){}),
                    CustomText(
                      text: "Keep me signed in",
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
              Row(
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
                    child: SizedBox( height: 50, width: 370,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Landingpage()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            elevation: 0,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            backgroundColor: secondaryColor,
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
              ),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: (){},
                        child: Text(
                          "Forgot Your Password?",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,
                          ),
                        ),
                    ),
                    SizedBox(height: 150),
                    CustomText(
                      text: "A New User?",
                    ),
                    CustomTextButton(
                        "Create new Account",
                        Colors.grey
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
