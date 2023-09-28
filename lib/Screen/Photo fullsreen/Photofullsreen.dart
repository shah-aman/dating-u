import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Photofullsreen extends StatefulWidget {
  const Photofullsreen({Key? key}) : super(key: key);

  @override
  State<Photofullsreen> createState() => _PhotofullsreenState();
}

class _PhotofullsreenState extends State<Photofullsreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 50, left: 40),
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffE8E6EA),
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Image(image: AssetImage("asset/image/photoscreen.png")),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("asset/image/photoscreen1.png"),
              ),
              Image(
                image: AssetImage("asset/image/photoscreen1.png"),
              ),
              Image(
                image: AssetImage("asset/image/photoscreen1.png"),
              ),
              Image(
                image: AssetImage("asset/image/photoscreen1.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
