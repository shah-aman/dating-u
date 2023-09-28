import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../I_am/I am a.dart';

class Profiledetails extends StatefulWidget {
  const Profiledetails({Key? key}) : super(key: key);

  @override
  State<Profiledetails> createState() => _ProfiledetailsState();
}

class _ProfiledetailsState extends State<Profiledetails> {
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
              padding: EdgeInsets.only(top: 40, right: 60),
              child: Text("Profile details",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 34)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Stack(children: const [
                Image(
                  image: AssetImage("asset/image/profiledetails.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 70),
                  child: CircleAvatar(
                    backgroundColor: Color(0xffb91d73),
                    child: Icon(Icons.camera_alt_rounded,
                        color: Colors.white, size: 19),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 295,
              height: 58,
              child: TextFormField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'First name',
                    labelStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffb91d73), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'David'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 295,
              height: 58,
              child: TextFormField(
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Last name',
                    labelStyle: const TextStyle(color: Colors.grey),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffb91d73), width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Peterson'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // onTap: () {
              //   showModalBottomSheet<void>(
              //     context: context,
              //     builder: (BuildContext context) {
              //       return SizedBox(
              //         height: 500,
              //         child: Center(
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             mainAxisSize: MainAxisSize.min,
              //             children: <Widget>[
              //               Container(
              //                 width: 295,
              //                 height: 56,
              //                 decoration: BoxDecoration(
              //                     gradient: const LinearGradient(
              //                       colors: [Color(0xfff953c6), Color(0xffb91d73)],
              //                       begin: Alignment.centerRight,
              //                       end: Alignment.centerLeft,
              //                     ),
              //                     borderRadius: BorderRadius.circular(15)),
              //                 child: const Center(
              //                     child: Text("Save",
              //                         style: TextStyle(
              //                             fontSize: 16,
              //                             fontWeight: FontWeight.w700,
              //                             color: Colors.white))),
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //   );
              // },
              onTap: () async {
                await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015),
                  lastDate: DateTime(2025),
                ).then(
                  (selectedDate) {
                    if (selectedDate != null) {
                      var dateInput;
                      dateInput.text =
                          DateFormat('dd-MM-yyyy').format(selectedDate);
                    }
                  },
                );
              },
              child: Container(
                width: 295,
                height: 56,
                decoration: BoxDecoration(
                    color: const Color(0xffb91d73).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.calendar_month_sharp,
                      color: Color(0xffb91d73),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Choose birthday date",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffb91d73))),
                  ],
                )),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
                Get.to(Iam());
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
                    child: Text("Confirm",
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
