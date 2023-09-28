import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Photo fullsreen/Photofullsreen.dart';

class Bottomtwo extends StatefulWidget {
  const Bottomtwo({Key? key}) : super(key: key);

  @override
  State<Bottomtwo> createState() => _BottomtwoState();
}

class _BottomtwoState extends State<Bottomtwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 0, left: 35),
                  child: Center(
                    child: Text(
                      "Matches",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () {
                    // Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 0, left: 0),
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xffFFFFFF),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: const Icon(
                      Icons.sort,
                      color: Color(0xffb91d73),
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "This is a list of people who have liked you \nand your matches.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 1,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
                Text("Today"),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 1,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const Photofullsreen());
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                              height: 200,
                              width: 140,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'asset/image/matches1.png',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 130, left: 10),
                            child: Text(
                              "Leilani, 19",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 160),
                            height: 40,
                            width: 140,
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.close, color: Colors.white),
                                Container(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                const Icon(Icons.favorite, color: Colors.white),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const Photofullsreen());
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                              height: 200,
                              width: 140,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'asset/image/matches2.png',
                                  fit: BoxFit.fill,
                                ),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 130, left: 10),
                            child: Text(
                              "Annabelle, 20",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 160),
                            height: 40,
                            width: 140,
                            decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.close, color: Colors.white),
                                Container(
                                  width: 2,
                                  color: Colors.white,
                                ),
                                const Icon(Icons.favorite, color: Colors.white),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Photofullsreen());
                        },
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 200,
                                width: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'asset/image/matches3.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const Padding(
                              padding: EdgeInsets.only(top: 130, left: 10),
                              child: Text(
                                "Reagan, 24",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 160),
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.close, color: Colors.white),
                                  Container(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                  const Icon(Icons.favorite,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Photofullsreen());
                        },
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 200,
                                width: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'asset/image/matches4.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const Padding(
                              padding: EdgeInsets.only(top: 130, left: 10),
                              child: Text(
                                "Hadley, 25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 160),
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.close, color: Colors.white),
                                  Container(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                  const Icon(Icons.favorite,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 1,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
                Text("Yesterday"),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 1,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Photofullsreen());
                        },
                        child: Stack(
                          children: [
                            SizedBox(
                                height: 200,
                                width: 140,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    'asset/image/matches5.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const Padding(
                              padding: EdgeInsets.only(top: 130, left: 10),
                              child: Text(
                                "Hadley, 25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 160),
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.close, color: Colors.white),
                                  Container(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                  const Icon(Icons.favorite,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(const Photofullsreen());
                        },
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 140,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'asset/image/matches6.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 90, top: 10),
                              child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Color(0xffb91d73),
                                  )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 130, left: 10),
                              child: Text(
                                "Hadley, 25",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 160),
                              height: 40,
                              width: 140,
                              decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.close, color: Colors.white),
                                  Container(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                  const Icon(Icons.favorite,
                                      color: Colors.white),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 230,
              height: 50,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xfff953c6),
                      Color(0xffb91d73),
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: InkWell(
                // onTap: () {
                //   Get.to(Mainscreen());
                // },
                child: Text("SEE WHO LINKS YOU",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15)),
              )),
            ).paddingOnly(top: 20),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
