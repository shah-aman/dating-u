import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Stories/stories.dart';

class Bottomthree extends StatefulWidget {
  const Bottomthree({Key? key}) : super(key: key);

  @override
  State<Bottomthree> createState() => _BottomthreeState();
}

class _BottomthreeState extends State<Bottomthree> {
  final List<String> numbers = [
    "asset/image/intro1.png",
    "asset/image/intro1.png",
    "asset/image/intro1.png",
    "asset/image/intro1.png",
  ];
  final List<String> numbers1 = [
    "You",
    "Emma",
    "Ava",
    "Sophia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50, left: 25),
                  child: Center(
                    child: Text(
                      "Messages",
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
                  // onTap: () {
                  //   // Get.back();
                  // },
                  child: Container(
                    margin: const EdgeInsets.only(top: 50, left: 0),
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
                    child: Image.asset(
                      'asset/image/matchicon.png',
                      color: const Color(0xffb91d73),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230, top: 20),
              child: Text(
                "Activities",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              height: MediaQuery.of(context).size.height * 0.17,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: InkWell(
                              onTap: () {
                                Get.to(const Stories());
                              },
                              child: Image.asset(
                                height: 80,
                                numbers[index].toString(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              numbers1[index].toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230),
              child: Text(
                "Messages",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("Asset/swipe2.jpeg")),
                              ),
                              title: const Text("Emelie",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              subtitle: const Text('Online',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: Wrap(
                                spacing: 15, // space between two icons
                                children: <Widget>[
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.video_camera_front,
                                        color: Color(0xffD43496),
                                      )),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.call,
                                        color: Color(0xffD43496),
                                      )),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(
                                    left: 40,
                                  ),
                                ),
                                const Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(right: 40),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 80, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Haha truly! Nice to meet you Rex!\nwhat about c cup of coffe today\nevening?",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 150, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Sure,Let's do it! 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 110, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 220,
                              child: const Center(
                                  child: Text(
                                "Great I will write later the exact\ntime and place.See you soon!",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD43496),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: 'Your message',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xffD43496),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("asset/image/profiledetails.png")),
                ),
                title: const Text("Emelie",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: const Text('Sticker 🙂',
                    style: TextStyle(color: Colors.black)),
                trailing: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child:
                          Text('23 Min', style: TextStyle(color: Colors.grey)),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffb91d73),
                      maxRadius: 10,
                      child: Text('1',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
                height: 2, color: Colors.grey, indent: 100, endIndent: 20),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("Asset/swipe1.jpg")),
                              ),
                              title: const Text("Abigail",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              subtitle: const Text('Online',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: Wrap(
                                spacing: 15, // space between two icons
                                children: <Widget>[
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.video_camera_front,
                                        color: Color(0xffD43496),
                                      )),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.call,
                                        color: Color(0xffD43496),
                                      )),

                                  // icon-2
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(
                                    left: 40,
                                  ),
                                ),
                                const Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(right: 40),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 80, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Haha truly! Nice to meet you Rex!\nwhat about c cup of coffe today\nevening?",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 150, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Sure,Let's do it! 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 110, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 220,
                              child: const Center(
                                  child: Text(
                                "Great I will write later the exact\ntime and place.See you soon!",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD43496),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: 'Your message',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xffD43496),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("asset/image/profiledetails.png")),
                ),
                title: const Text("Abigail",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: const Text('Typing...',
                    style: TextStyle(color: Colors.black)),
                trailing: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child:
                          Text('27 Min', style: TextStyle(color: Colors.grey)),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffb91d73),
                      maxRadius: 10,
                      child: Text('2',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
                height: 2, color: Colors.grey, indent: 100, endIndent: 20),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("Asset/swipe4.jpg")),
                              ),
                              title: const Text("Elizabeth",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              subtitle: const Text('Online',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: Wrap(
                                spacing: 15, // space between two icons
                                children: <Widget>[
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.video_camera_front,
                                        color: Color(0xffD43496),
                                      )),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.call,
                                        color: Color(0xffD43496),
                                      )),

                                  // icon-2
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(
                                    left: 40,
                                  ),
                                ),
                                const Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(right: 40),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 80, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Haha truly! Nice to meet you Rex!\nwhat about c cup of coffe today\nevening?",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 150, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Sure,Let's do it! 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 110, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 220,
                              child: const Center(
                                  child: Text(
                                "Great I will write later the exact\ntime and place.See you soon!",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD43496),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: 'Your message',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xffD43496),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("asset/image/profiledetails.png")),
                ),
                title: Text("Elizabeth",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text('Ok,see you then.',
                    style: TextStyle(color: Colors.black)),
                trailing: Text('33 Min', style: TextStyle(color: Colors.grey)),
              ),
            ),
            const Divider(
                height: 2, color: Colors.grey, indent: 100, endIndent: 20),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("Asset/swipe5.jpg")),
                              ),
                              title: const Text("Penelope",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              subtitle: const Text('Online',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: Wrap(
                                spacing: 15, // space between two icons
                                children: <Widget>[
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.video_camera_front,
                                        color: Color(0xffD43496),
                                      )),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.call,
                                        color: Color(0xffD43496),
                                      )),

                                  // icon-2
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(
                                    left: 40,
                                  ),
                                ),
                                const Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(right: 40),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 80, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Haha truly! Nice to meet you Rex!\nwhat about c cup of coffe today\nevening?",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 150, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Sure,Let's do it! 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 110, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 220,
                              child: const Center(
                                  child: Text(
                                "Great I will write later the exact\ntime and place.See you soon!",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD43496),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: 'Your message',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xffD43496),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("asset/image/profiledetails.png")),
                ),
                title: Text("Penelope",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text("'You: Hey!What's up,long time.",
                    style: TextStyle(color: Colors.black)),
                trailing: Text('50 Min', style: TextStyle(color: Colors.grey)),
              ),
            ),
            const Divider(
                height: 2, color: Colors.grey, indent: 100, endIndent: 20),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("Asset/swipe10.jpg")),
                              ),
                              title: const Text("Chloe",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              subtitle: const Text('Online',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: Wrap(
                                spacing: 15, // space between two icons
                                children: <Widget>[
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.video_camera_front,
                                        color: Color(0xffD43496),
                                      )),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.call,
                                        color: Color(0xffD43496),
                                      )),

                                  // icon-2
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(
                                    left: 40,
                                  ),
                                ),
                                const Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(right: 40),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 80, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Haha truly! Nice to meet you Rex!\nwhat about c cup of coffe today\nevening?",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 150, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Sure,Let's do it! 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 110, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 220,
                              child: const Center(
                                  child: Text(
                                "Great I will write later the exact\ntime and place.See you soon!",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD43496),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: 'Your message',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xffD43496),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("asset/image/profiledetails.png")),
                ),
                title: Text("Chloe",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text("'You: Hello how are you?",
                    style: TextStyle(color: Colors.black)),
                trailing: Text('55 Min', style: TextStyle(color: Colors.grey)),
              ),
            ),
            const Divider(
                height: 2, color: Colors.grey, indent: 100, endIndent: 20),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 700,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("Asset/modelsqure.jpg")),
                              ),
                              title: const Text("Grace",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w500)),
                              subtitle: const Text('Online',
                                  style: TextStyle(color: Colors.grey)),
                              trailing: Wrap(
                                spacing: 15, // space between two icons
                                children: <Widget>[
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.video_camera_front,
                                        color: Color(0xffD43496),
                                      )),
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.call,
                                        color: Color(0xffD43496),
                                      )),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(
                                    left: 40,
                                  ),
                                ),
                                const Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    height: 60,
                                    thickness: 1,
                                    indent: 5,
                                    endIndent: 5,
                                    color: Colors.grey[20],
                                  ).paddingOnly(right: 40),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 80, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Haha truly! Nice to meet you Rex!\nwhat about c cup of coffe today\nevening?",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(right: 150, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 50,
                              width: 150,
                              child: const Center(
                                  child: Text(
                                "Sure,Let's do it! 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 110, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffF4F8FB),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 70,
                              width: 220,
                              child: const Center(
                                  child: Text(
                                "Great I will write later the exact\ntime and place.See you soon!",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 270),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 10),
                              decoration: BoxDecoration(
                                color: const Color(0xffFEF4F3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80,
                              width: 250,
                              child: const Center(
                                  child: Text(
                                "Hi John, how are you? I saw on the \napp that we've crossed paths several \ntimes this week 🙂",
                                style: TextStyle(fontWeight: FontWeight.w400),
                              )),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10, right: 240),
                              child: Text(
                                "2:55 PM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 30),
                                  width: 250,
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD43496),
                                            width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 2.0),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      hintText: 'Your message',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 10),
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                            color: const Color(0xffD43496),
                                          )),
                                      child: const Icon(
                                        Icons.send,
                                        color: Color(0xffD43496),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("asset/image/profiledetails.png")),
                ),
                title: Text("Grace",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text("'You: Great I will write later...",
                    style: TextStyle(color: Colors.black)),
                trailing: Text('1 hour', style: TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
