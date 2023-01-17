import 'package:flutter/material.dart';

class YourOrder extends StatefulWidget {
  const YourOrder({Key? key}) : super(key: key);

  @override
  State<YourOrder> createState() => _YourOrderState();
}

class _YourOrderState extends State<YourOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        bottom: true,
        top: true,
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/images/bk.png"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: height / 35, left: width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Find Your \nFavorite Food",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Image.asset("assets/images/icon_notification.png"),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: height / 14,
                  width: width / 1.5,
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "What do you want to order?",
                        style: TextStyle(color: Colors.white30),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height / 14,
                  width: width / 6,
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Image.asset("assets/images/filter.png"),
                ),
              ],
            ),
            SizedBox(
              height: height / 2.2,
              width: width,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  height: height / 6,
                  margin: EdgeInsets.only(top: height * 0.02, right: width * 0.05, left: width * 0.05, bottom: 15),
                  width: width / 1.2,
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      index == 0
                          ? Image.asset("assets/images/menu_photo.png")
                          : index == 1
                              ? Image.asset("assets/images/menu_photo1.png")
                              : index == 2
                                  ? Image.asset("assets/images/menu_photo2.png")
                                  : Image.asset("assets/images/menu_photo3.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Spacy fresh crab",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              "Waroenk kita",
                              style: TextStyle(color: Colors.white30),
                            ),
                          ),
                          Text(
                            "\$ 35",
                            style: TextStyle(
                                color: index == 0
                                    ? Colors.green
                                    : index == 1
                                        ? Colors.green
                                        : Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        width: width / 5,
                        height: height / 25,
                        decoration: BoxDecoration(
                          color: index == 0
                              ? Colors.green
                              : index == 1
                                  ? Colors.green
                                  : Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(height),
                          ),
                        ),
                        child: Center(
                          child: index == 0
                              ? const Text(
                                  "Proccess",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                                )
                              : index == 1
                                  ? const Text(
                                      "Process",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                                    )
                                  : const Text(
                                      "Reorder",
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),
                                    ),
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: 4,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: height / 14,
              width: width / 1.3,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const Center(
                child: Text(
                  "Check out",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
