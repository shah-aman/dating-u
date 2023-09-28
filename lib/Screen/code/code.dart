import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../profile_details/profile_details.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                      margin: const EdgeInsets.only(top: 60, left: 30),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
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
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text("00:42",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
            const SizedBox(
              height: 20,
            ),
            const Text("Type the verification code \n         we’ve sent you",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: OTPTextField(
                  // onChanged: (value) {
                  //   code = value;
                  // },
                  otpFieldStyle: OtpFieldStyle(
                      enabledBorderColor: const Color(0xffb91d73),
                      disabledBorderColor: const Color(0xffb91d73),
                      focusBorderColor: Colors.black38),
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: ((context) => const Whatyouremail())));
                    print("Completed: " + pin);
                  }),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     const SizedBox(
            //       width: 30,
            //     ),
            //     Container(
            //         margin: const EdgeInsets.only(top: 30),
            //         height: 51,
            //         width: 51,
            //         decoration: BoxDecoration(
            //           borderRadius: const BorderRadius.all(Radius.circular(15)),
            //           color: const Color(0xffb91d73),
            //           border: Border.all(
            //             width: 1,
            //             color: Colors.grey,
            //             style: BorderStyle.solid,
            //           ),
            //         ),
            //         child: const Center(
            //             child: Text(
            //           "7",
            //           style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ))),
            //     Container(
            //         margin: const EdgeInsets.only(top: 30),
            //         height: 51,
            //         width: 51,
            //         decoration: BoxDecoration(
            //           borderRadius: const BorderRadius.all(Radius.circular(15)),
            //           color: const Color(0xffb91d73),
            //           border: Border.all(
            //             width: 1,
            //             color: Colors.grey,
            //             style: BorderStyle.solid,
            //           ),
            //         ),
            //         child: const Center(
            //             child: Text(
            //           "2",
            //           style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ))),
            //     Container(
            //         margin: const EdgeInsets.only(top: 30),
            //         height: 51,
            //         width: 51,
            //         decoration: BoxDecoration(
            //           borderRadius: const BorderRadius.all(Radius.circular(15)),
            //           border: Border.all(
            //             width: 1,
            //             color: const Color(0xffb91d73),
            //             style: BorderStyle.solid,
            //           ),
            //         ),
            //         child: const Center(
            //             child: Text(
            //           "0",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //             color: Color(0xffb91d73),
            //           ),
            //         ))),
            //     Container(
            //         margin: const EdgeInsets.only(top: 30),
            //         height: 51,
            //         width: 51,
            //         decoration: BoxDecoration(
            //           borderRadius: const BorderRadius.all(Radius.circular(15)),
            //           border: Border.all(
            //             width: 1,
            //             color: Colors.grey,
            //             style: BorderStyle.solid,
            //           ),
            //         ),
            //         child: const Center(
            //             child: Text(
            //           "0",
            //           style: TextStyle(
            //             fontSize: 20,
            //             color: Colors.grey,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ))),
            //     const SizedBox(
            //       width: 30,
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 80,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '1',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '2',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '3',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '4',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '5',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '6',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '7',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '8',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '9',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        '0',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Icon(Icons.backspace_outlined),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Get.to(const Profiledetails());
              },
              child: const Text("Send again",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xffb91d73),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
