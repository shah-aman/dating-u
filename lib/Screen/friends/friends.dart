import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../notification/notification.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children:  const [
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
                image: AssetImage("asset/image/friend.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, right: 0),
              child: Text("Search friend’s",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
            ),
             const Padding(
              padding: EdgeInsets.only(top: 15, right: 0),
              child: Text("You can find friends from your contact lists \n                          to connected",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
            ),
             const SizedBox(height: 150,),
            InkWell(
              onTap: () {
                Get.to(const NotificationScreen());
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
                    child: Text("Access to a contact list",
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
