import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../number/number.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 100,),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: Image(
                  image: AssetImage("asset/image/signlogo.jpg"),
                  width: 108.64,
                  height: 100),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Sign up to continue",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 0),
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
                  child: Text(
                    "Continue with email",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Get.to(const Number());
              },
              child: Container(
                width: 295,
                height: 56,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffF3F3F3)),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text("Use phone number",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffb91d73)))),
              ),
            ),
            const SizedBox(
              height: 50,
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
                Text("or sign up with"),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 64,
                    width: 64,
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
                      Icons.facebook_outlined,
                      color: Color(0xffb91d73),
                      size: 40,
                    )),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: const Color(0xffFFFFFF),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: const Image(
                        image: AssetImage("asset/image/googlelogo.png"),
                        color: Color(0xffb91d73))),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 64,
                    width: 64,
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
                      Icons.apple,
                      color: Color(0xffb91d73),
                      size: 40,
                    )),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Terms of use     Privacy Policy",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xffb91d73),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
