import 'package:ebook_app/widgets/button.dart';
import 'package:ebook_app/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF112650),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Expanded(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),

                    Container(
                      height: height * 0.19,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/signup.png'),
                            fit: BoxFit.cover),
                      ),
                    ),

                    SizedBox(
                      height: height * 0.02,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back!",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: height * 0.015,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Let’s login for explore continues",
                            style: TextStyle(
                              color: Color(0xFFB0B6C3),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: height * 0.015,
                    ),

                    TextForm(
                        hintTextColor: Color(0xFF112650),
                        backgroundColor: Color(0xFFF8F7FB),
                        borderColor: Color(0xFF112650),
                        hintText: "enter your email",
                        size: 55,
                        icon: Icons.email_outlined),

                    SizedBox(
                      height: height * 0.015,
                    ),

                    TextForm(
                        hintTextColor: Color(0xFF112650),
                        backgroundColor: Color(0xFFF8F7FB),
                        borderColor: Color(0xFF112650),
                        size: 55,
                        icon: Icons.lock_open_outlined,
                      obscureText: true,
                    ),

                    SizedBox(
                      height: height * 0.015,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Color(0xFF112650),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: height * 0.015,
                    ),

                    AppButton(
                        textColor: Colors.white,
                        backgroundColor: Color(0xFF112650),
                        text: "Sign in",
                        width: width*0.6, heigth: height *0.2,),

                    SizedBox(
                      height: height * 0.015,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You can Connect with",
                          style: TextStyle(
                            color: Color(0xFFB1B9C9),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: height * 0.04,
                    ),

                    Container(
                      height: height * 0.07,
                      width: width * 0.76,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo/logo.png'),
                            fit: BoxFit.cover),
                      ),
                    ),

                    SizedBox(
                      height: height * 0.03,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                            color: Color(0xFF112650),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: width * 0.008,),
                        Text(
                          "Sign Up here",
                          style: TextStyle(
                            color: Color(0xFFED826C),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),




                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
