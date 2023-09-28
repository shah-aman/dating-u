import 'package:flutter/material.dart';

class Bottomfour extends StatefulWidget {
  const Bottomfour({Key? key}) : super(key: key);

  @override
  State<Bottomfour> createState() => _BottomfourState();
}

class _BottomfourState extends State<Bottomfour> {
  @override
  String? selected;

  List<String> hobbyList = [
    'Travelling',
    'Books',
    'Music',
    'Dancing',
    'Modeling',
  ];

  List<String>? selectedHobby = [];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    const Image(
                      image: AssetImage("asset/image/bottomfour.png"),
                      width: 360,
                    ),
                    InkWell(
                      onTap: () {
                        // Get.back();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 50, left: 20),
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: const Color(0xffE8E6EA),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xffE8E6EA),
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xffFFFFFF),
                          size: 22,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 350, left: 0),
                      height: 60,
                      width: 360,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Text(
                        "Jessica Parker, 23",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 85, top: 5),
                      child: Text(
                        "Professional model",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 20),
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffE8E6EA),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: const Icon(
                    Icons.send,
                    color: Color(0xffb91d73),
                    size: 22,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 130),
                      child: Text(
                        "Location",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 35, top: 5),
                      child: Text(
                        "Chicago, IL United States",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, left: 20),
                  height: 34,
                  width: 61,
                  decoration: BoxDecoration(
                    color: const Color(0xffE94057).withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffb91d73),
                        size: 14,
                      ),
                      Text(
                        "1 km",
                        style: TextStyle(
                          color: Color(0xffb91d73),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 255),
              child: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10, top: 5),
              child: Text(
                "My name is Jessica Parker and I enjoy meeting \nnew people and finding ways to help them \nhave an uplifting experience. I enjoy reading..",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 235, top: 7),
              child: Text(
                "Read more",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xffb91d73),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 255, top: 20),
              child: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Wrap(
                children: hobbyList.map(
                  (hobby) {
                    bool isSelected = false;
                    if (selectedHobby!.contains(hobby)) {
                      isSelected = true;
                    }
                    return GestureDetector(
                      onTap: () {
                        selected = hobby;
                        if (!selectedHobby!.contains(hobby)) {
                          if (selectedHobby!.length < 14) {
                            selectedHobby!.add(hobby);
                            setState(() {});
                            print(selectedHobby);
                          }
                        } else {
                          selectedHobby!
                              .removeWhere((element) => element == hobby);
                          setState(() {});
                          print(selectedHobby);
                        }
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 4),
                          child: Container(
                            height: 40,
                            width: 95,
                            padding: const EdgeInsets.symmetric(
                                vertical: 05, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isSelected
                                  ? const Color(0xffb91d73)
                                  : Colors.grey[100],
                            ),
                            child: Center(
                              child: Text(
                                hobby,
                                style: TextStyle(
                                    color:
                                        isSelected ? Colors.white : Colors.grey,
                                    fontSize: 12),
                              ),
                            ),
                          )),
                    );
                  },
                ).toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Gallery",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xffb91d73),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage("asset/image/bmodel1.png")),
                Image(image: AssetImage("asset/image/bmodel2.png")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage("asset/image/bmodel3.png")),
                  Image(image: AssetImage("asset/image/bmodel4.png")),
                  Image(image: AssetImage("asset/image/bmodel5.png")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
