import 'package:flutter/material.dart';
import 'package:food_ninja/screens/chat_details.dart';

class RateRestaurant extends StatefulWidget {
  const RateRestaurant({Key? key}) : super(key: key);

  @override
  State<RateRestaurant> createState() => _RateRestaurantState();
}

class _RateRestaurantState extends State<RateRestaurant> {
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
              height: height / 3,
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
              padding: const EdgeInsets.only(top: 115),
              child: ListView(
                // padding: EdgeInsets.symmetric(vertical: height / 4.5, horizontal: width / 4),
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/logo_2.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Thank You!",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Enjoy Your Meal",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Please rate your Meal",
                        style: TextStyle(fontSize: 10, color: Colors.white70, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    "assets/images/star_icon.png",
                    scale: 4.8,
                  ),
                  SizedBox(height: height / 10),
                  Column(
                    children: [
                      Container(
                        height: height / 12,
                        width: width / 1.1,
                        decoration: BoxDecoration(
                          color: const Color(0x24F4F4F4),
                          borderRadius: BorderRadius.circular(height / 60),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Image.asset("assets/images/write_icon.png"),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 3.5),
                              child: Text(
                                "Leave feedback",
                                style: TextStyle(color: Colors.white30, fontSize: 16.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("tap");
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChatDetails(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 22, bottom: 20),
                                    child: Container(
                                      height: height / 12,
                                      width: width / 1.8,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        color: Colors.green,
                                      ),
                                      child: Row(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.only(left: 75),
                                            child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Container(
                                  height: height / 12,
                                  width: width / 3.5,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    color: Colors.white12,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "Skip",
                                          style: TextStyle(color: Color(0xFF53E88B), fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
