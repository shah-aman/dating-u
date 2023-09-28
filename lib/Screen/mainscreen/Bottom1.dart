import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';
import '../../card/content.dart';

class Bottomone extends StatefulWidget {
  const Bottomone({Key? key}) : super(key: key);

  @override
  State<Bottomone> createState() => BottomoneState();
}

class BottomoneState extends State<Bottomone> {
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;

  final List<String> _names = [
    "asset/image/intro1.png",
    "asset/image/intro1.png",
    "asset/image/intro1.png",
    "asset/image/intro1.png",
    "asset/image/intro1.png",
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
        content: Content(text: _names[i]),
      ));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override


  String? selected;

  List<String> hobbyList = [
    'Girls',
    'Boys',
    'Both',
  ];

  List<String>? selectedHobby = [];

  double _currentSliderValue = 20;
  double _currentSliderValue1 = 20;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 0, right: 30),
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: const Color(0xffFFFFFF),
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
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 0),
                child: Column(
                  children: const [
                    Text("Discover",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24)),
                    Text("Chicago, II",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 30),
                child: Container(
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    color: const Color(0xffFFFFFF),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffE8E6EA),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.65,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 90, top: 20),
                                      child: Text(
                                        "Filters",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 30, top: 20),
                                      child: Text(
                                        "Skip",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color(0xffb91d73),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 220,top: 30),
                                  child: Text("Interested in",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700)),
                                ),
                                const SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 19),
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
                                                height: 40,
                                                width: 95,
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 05, horizontal: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: isSelected
                                                      ? const Color(0xffb91d73)
                                                      : Colors.grey[100],
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    hobby,
                                                    style: TextStyle(
                                                        color:
                                                        isSelected ? Colors.white : Colors.grey,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              )),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                SizedBox(
                                  width: 300,
                                  height: 58,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        labelText: 'Location',
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
                                        hintText: 'Chicago, USA'),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Padding(
                                      padding:
                                      EdgeInsets.only( top: 20),
                                      child: Text(
                                        "Distance",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(width: 130,),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 20),
                                      child: Text(
                                        "40km",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Slider(
                                  value: _currentSliderValue,
                                  max: 100,
                                  activeColor: Color(0xffb91d73),
                                  inactiveColor: Colors.grey,

                                  label: _currentSliderValue.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Padding(
                                      padding:
                                      EdgeInsets.only( top: 20),
                                      child: Text(
                                        "Age",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    SizedBox(width: 150,),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: 20),
                                      child: Text(
                                        "20-28",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Slider(
                                  value: _currentSliderValue1,
                                  max: 100,
                                  activeColor: Color(0xffb91d73),
                                  inactiveColor: Colors.grey,

                                  label: _currentSliderValue1.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue1 = value;
                                    });
                                  },
                                ),
                                const SizedBox(height: 20,),
                                Container(
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
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Image.asset(
                      'asset/image/matchicon.png',
                      color: const Color(0xffb91d73),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                height: MediaQuery.of(context).size.height / 1.65,
                child: SwipeCards(
                  matchEngine: _matchEngine!,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: InkWell(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: ((context) => const Rex())));
                        // },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  _swipeItems[index].content.text,
                                ),
                                fit: BoxFit.fitHeight),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 170, top: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 40,
                                  width: 80,
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Icon(Icons.location_on_outlined,
                                            size: 20, color: Colors.white),
                                      ),
                                      Text('1 Miles',
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 50, top: 350),
                                    child: Text('Jessica Parker, 23',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 120, top: 5),
                                    child: Text('Professional model',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  onStackFinished: () {},
                  itemChanged: (SwipeItem item, int index) {
                    print("item: ${item.content.text}, index: $index");
                  },
                  upSwipeAllowed: true,
                  fillSpace: true,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 0, top: 0),
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white30,
                  child: Icon(Icons.cancel_outlined, color: Colors.redAccent),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0, top: 0),
                height: 99,
                width: 99,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: const CircleAvatar(
                  backgroundColor: Color(0xffE94057),
                  child: Icon(Icons.favorite, color: Colors.white, size: 50),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 0, top: 0),
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white30,
                  child: Icon(Icons.star, color: Colors.purple),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
