import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

import '../signup/signup.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final Rx<PageController> _controller = PageController().obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            controller: _controller.value,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 1.7,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Image(
                            image: AssetImage('asset/image/intro1.png'),
                            height: 350,
                            width: 400),
                      ),
                    ],
                  ),
                  const Text("Algorithm",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xffb91d73))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Users going through a vetting process to \n     ensure you never match with bots.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Stack(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            if (_controller.value.page == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Signup())));
                            } else {
                              _controller.value.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.linear);
                            }
                          },
                          child: Ink(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            width: 295,
                            height: 56,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xfff953c6),
                                    Color(0xffb91d73)
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                                child: Text("Create an account",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        fontFamily: "Sk-Modernist-Regular",
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffb91d73),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 1.7,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Image(
                            image: AssetImage('asset/image/intro2.png'),
                            height: 350,
                            width: 400),
                      ),
                    ],
                  ),
                  const Text("Matches",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xffb91d73))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "We match you with people that have a \n        large array of similar interests.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Stack(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            if (_controller.value.page == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Signup())));
                            } else {
                              _controller.value.nextPage(
                                  duration: const Duration(milliseconds: 520),
                                  curve: Curves.linear);
                            }
                          },
                          child: Ink(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            width: 295,
                            height: 56,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xfff953c6),
                                    Color(0xffb91d73)
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                                child: Text("Create an account",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        fontFamily: "Sk-Modernist-Regular",
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffb91d73),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 1.7,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Image(
                            image: AssetImage('asset/image/intro3.png'),
                            height: 350,
                            width: 400),
                      ),
                    ],
                  ),
                  const Text("Premium",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Color(0xffb91d73))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Sign up today and enjoy the first month\n           of premium benefits on us.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Stack(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            if (_controller.value.page == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Signup())));
                            } else {
                              _controller.value.nextPage(
                                  duration: const Duration(milliseconds: 520),
                                  curve: Curves.linear);
                            }
                          },
                          child: Ink(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            width: 295,
                            height: 56,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xfff953c6),
                                    Color(0xffb91d73)
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                                child: Text("Create an account",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: const TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                        fontFamily: "Sk-Modernist-Regular",
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffb91d73),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 380,
            ),
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller.value,
                count: 3,
                effect: const SlideEffect(
                  activeDotColor: Color(0xffD43496),
                  dotHeight: 10,
                  dotColor: Colors.grey,
                  dotWidth: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
