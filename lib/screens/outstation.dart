import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yoya_app/screens/payment_method.dart';

class OutstationPage extends StatefulWidget {
  const OutstationPage({Key? key}) : super(key: key);

  @override
  State<OutstationPage> createState() => _OutstationPageState();
}

class _OutstationPageState extends State<OutstationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      "assets/images/google_map_images.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: const Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 320,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(2.0, 2.0), blurRadius: 5.0, color: Colors.grey)
            ]),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: 60,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              color: Colors.grey[350],
              child: TextField(
                cursorColor: Colors.black,
                //  cursorHeight: 25,
                autofocus: true,
                style: const TextStyle(
                    fontSize: 18, height: 1.2, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      FontAwesomeIcons.search,
                      color: Colors.black,
                    ),
                    isCollapsed: false,
                    isDense: true,
                    //  filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 13.0, horizontal: 7),
                    hintText: "Search destination",
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                "Popular destination",
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: 73,
                          height: 84,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Hawamahals.png"),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Hawa Mahal",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        )
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentMethod()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfffFFD00A),
                    ),
                    child: const Center(
                        child: Text(
                      "Go with yoya",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfffD6D6D6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Schedule",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(FontAwesomeIcons.car),
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
