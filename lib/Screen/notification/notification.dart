import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../mainscreen/mainscreen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 80, right: 30),
                  child: Text("Skip",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color(0xffb91d73),
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: Image(
                image: AssetImage("asset/image/notificationimage.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, right: 0),
              child: Text("Enable notification’s",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15, right: 0),
              child: Text("Get push-notification when you get the match \n                       or receive a message.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
            ),
            const SizedBox(height: 150,),
            InkWell(
              onTap: () {
                Get.to(const Mainscreen());
              },
              child: Container(
                width: 295,
                height: 56,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xfff953c6), Color(0xffb91d73)],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text("I want to be notified",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
