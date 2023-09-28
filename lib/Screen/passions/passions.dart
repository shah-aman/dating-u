import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../friends/friends.dart';

class YourInterests extends StatefulWidget {
  const YourInterests({Key? key}) : super(key: key);

  @override
  State<YourInterests> createState() => _YourInterestsState();
}

String? selected;

List<String> hobbyList = [
  'Photography',
  'Shopping',
  'Karaoke',
  'Yoga',
  'Cooking',
  'Tennis',
  'Run',
  'Swimming',
  'Art',
  'Traveling',
  'Extreme',
  'Music',
  'Drink',
  'Video games',
];

List<String>? selectedHobby = [];

class _YourInterestsState extends State<YourInterests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 50, left: 30),
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
                    Icons.arrow_back_ios_sharp,
                    color: Color(0xffb91d73),
                    size: 22,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 200),
                child: Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xffb91d73),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, right: 80),
            child: Text("Your interests",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
                "Select a few of your interests and let everyone \nknow what you’re passionate about.",
                style: TextStyle(color: Colors.grey)),
          )),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
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
                          height: 50,
                          width: 130,
                          padding: const EdgeInsets.symmetric(
                              vertical: 05, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isSelected
                                ? const Color(0xffb91d73)
                                : Colors.grey[100],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              hobby,
                              style: TextStyle(
                                  color:
                                      isSelected ? Colors.white : Colors.grey,
                                  fontSize: 14),
                            ),
                          ),
                        )),
                  );
                },
              ).toList(),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Get.to(const Friends());
            },
            child: Ink(
              width: 295,
              height: 56,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xfff953c6), Color(0xffb91d73)],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text("Continue",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15))),
            ),
          ),
        ],
      ),
    );
  }
}
