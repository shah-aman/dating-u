import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../passions/passions.dart';

class Iam extends StatefulWidget {
  @override
  State<Iam> createState() => _IamState();
}

class _IamState extends State<Iam> {
  bool isChecked = false;

  String? selectedd;

  List<String> hobbyList = [
    'Women',
    'Man',
    'Choose another',
  ];

  List<String>? selectedHobby = [];

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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,  color: Color(0xffb91d73),),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40, right: 200),
            child: Text("I am a",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 100),
            child: Wrap(
              children: hobbyList.map(
                (hobby) {
                  bool isSelected = false;
                  if (selectedHobby!.contains(hobby)) {
                    isSelected = true;
                  }
                  return GestureDetector(
                    onTap: () {
                      selectedd = hobby;
                      if (!selectedHobby!.contains(hobby)) {
                        if (selectedHobby!.length < 1) {
                          selectedHobby!.add(hobby);
                          setState(() {});
                        }
                      } else {
                        selectedHobby!
                            .removeWhere((element) => element == hobby);
                        setState(() {});
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: isSelected
                            ? const Color(0xffb91d73)
                            : Colors.grey[100],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                hobby,
                                style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.check_rounded,
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Get.to(const YourInterests());
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
