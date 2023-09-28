import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../code/code.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150, right: 130),
              child: Text(
                "My mobile",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 295,
              child: const Text(
                "Please enter your valid phone number. We will \nsend you a 4-digit code to verify your account. ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             Padding(
              padding: const EdgeInsets.only(right: 35, left: 35),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                autofocus: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xffb91d73), width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: '331 623 8413',
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                Get.to(const Code());
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
                    child: Text("Continue",
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
