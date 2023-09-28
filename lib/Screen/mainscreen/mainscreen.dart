import 'package:flutter/material.dart';

import 'Bottom1.dart';
import 'Bottom2.dart';
import 'Bottom3.dart';
import 'Bottom4.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key? key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int pageIndex = 0;

  final pages = [
    const Bottomone(),
    const Bottomtwo(),
    const Bottomthree(),
    const Bottomfour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 40,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.find_in_page,
                    color: Color(0xffb91d73),
                  )
                : const Icon(
                    Icons.find_in_page,
                    color: Colors.grey,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.favorite,
                    color: Color(0xffb91d73),
                  )
                : const Icon(
                    Icons.favorite,
                    color: Colors.grey,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.chat,
                    color: Color(0xffb91d73),
                  )
                : const Icon(
                    Icons.chat,
                    color: Colors.grey,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Color(0xffb91d73),
                  )
                : const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
          ),
        ],
      ),
    );
  }
}
