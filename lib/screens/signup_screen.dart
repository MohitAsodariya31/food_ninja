import 'package:flutter/material.dart';

import 'second_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height / 2.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: height / 2.4,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0D0D0D),
                    Color(0x00000000),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.symmetric(vertical: height / 16, horizontal: width / 14),
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/app_logo.png",
                      height: height / 6.2,
                    ),
                    SizedBox(height: height / 55),
                    Text(
                      "FoodNinja",
                      style: TextStyle(
                        fontFamily: "Viga",
                        fontSize: text * 32,
                        height: 1,
                        color: const Color(0xFF53E88B),
                      ),
                    ),
                    Text(
                      "Deliever Favorite Food",
                      style: TextStyle(
                        fontSize: text * 11,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 14),
                    Text(
                      "Login To Your Account",
                      style: TextStyle(
                        fontSize: text * 18,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 20),
                    Container(
                      height: height / 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                    ),
                    SizedBox(height: height / 50),
                    Container(
                      height: height / 12,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0x24F4F4F4),
                        borderRadius: BorderRadius.circular(height / 60),
                      ),
                    ),
                    SizedBox(height: height / 30),
                    Text(
                      "Or Continue With",
                      style: TextStyle(
                        color: const Color(0xFFFFFFFF),
                        fontSize: text * 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 25),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: height / 12,
                            decoration: BoxDecoration(
                              color: const Color(0x24F4F4F4),
                              borderRadius: BorderRadius.circular(height / 60),
                            ),
                          ),
                        ),
                        SizedBox(width: width / 18),
                        Expanded(
                          child: Container(
                            height: height / 12,
                            decoration: BoxDecoration(
                              color: const Color(0x24F4F4F4),
                              borderRadius: BorderRadius.circular(height / 60),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height / 30),
                    Text(
                      "Forgot Your Password?",
                      style: TextStyle(
                        color: const Color(0xFF53E88B),
                        fontSize: text * 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height / 18),
                    GestureDetector(
                      onTap: () {
                        debugPrint("1234567890-=");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: height / 14,
                        width: width / 3,
                        decoration: BoxDecoration(
                          color: const Color(0xFF53E88B),
                          borderRadius: BorderRadius.circular(height / 60),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
