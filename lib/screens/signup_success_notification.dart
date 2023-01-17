import 'package:flutter/material.dart';
import 'package:food_ninja/screens/rate_restaurant.dart';

class SignupSuccessNotification extends StatefulWidget {
  const SignupSuccessNotification({Key? key}) : super(key: key);

  @override
  State<SignupSuccessNotification> createState() => _SignupSuccessNotificationState();
}

class _SignupSuccessNotificationState extends State<SignupSuccessNotification> {
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
            Padding(
              padding: const EdgeInsets.only(top: 192),
              child: ListView(
                // padding: EdgeInsets.symmetric(vertical: height / 3.3, horizontal: width / 4),
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/success_logo.png"),
                      SizedBox(
                        height: height / 20,
                      ),
                      Text(
                        "Congrats!",
                        style: TextStyle(
                          fontFamily: "BentonSans-Bold.ttf",
                          fontWeight: FontWeight.bold,
                          fontSize: text * 32,
                          color: Color(0xFF53E88B),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Align(
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          "Your Profile Is Ready To Use",
                          style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RateRestaurant(),
                              ),
                            );
                          },
                          child: Container(
                            height: height / 15,
                            width: width / 3,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.greenAccent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Row(
                                children: const [
                                  Text(
                                    "Try Order",
                                    style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
