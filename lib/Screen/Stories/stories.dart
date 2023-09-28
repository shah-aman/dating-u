import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("asset/image/stories.png", width: 360),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Divider(
                height: 2,
                thickness: 4,
                color: Colors.white,
                indent: 20,
                endIndent: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Divider(
                height: 2,
                thickness: 4,
                color: Colors.red,
                indent: 20,
                endIndent: 200,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 20),
                  child: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage("asset/image/swipe1.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, left: 10),
                  child: Text(
                    "Annabelle",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Get.back();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 80, left: 100),
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xffE8E6EA),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xffE8E6EA),
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Color(0xffFFFFFF),
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin:
                  const EdgeInsets.only(top: 700, left: 30),
                  width: 250,
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Your message',
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 700, left: 10),
                  child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(10),
                          border: Border.all(
                            color:  Colors.white,
                          )),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
