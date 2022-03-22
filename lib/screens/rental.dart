import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RentalPage extends StatefulWidget {
  const RentalPage({Key? key}) : super(key: key);

  @override
  State<RentalPage> createState() => _RentalPageState();
}

class _RentalPageState extends State<RentalPage> {
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
        height: 460,
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
              width: MediaQuery.of(context).size.width * 0.9,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[350]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Where to?",
                      textScaleFactor: 1.2,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 90),
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xfff7f6fb),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.clock,
                          color: Color(0xfffFFD00A),
                          size: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Now",
                            textScaleFactor: 1.1,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 12),
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.angleDown,
                          size: 17,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.timer,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text(
                          "1 hrs 10 km package",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Extra charges on exceeding package.",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 50),
              width: MediaQuery.of(context).size.width,
              height: 37,
              color: Color(0xfff7f6fb),
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfffFFD00A),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: Colors.grey)
                        ]),
                    child: const Center(
                        child: Text(
                      "1 hr ; 10 km",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xfff7f6fb),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                                color: Colors.grey)
                          ]),
                      child: const Center(
                          child: Text(
                        "2 hr ; 20 km",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ))),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff7f6fb),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: Colors.grey)
                        ]),
                    child: const Center(
                        child: Text(
                      "3 hr ; 30 km",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff7f6fb),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: Colors.grey)
                        ]),
                    child: const Center(
                        child: Text(
                      "3 hr ; 30 km",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  Container(
                    width: 90.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff7f6fb),
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2.0, 2.0),
                              blurRadius: 5.0,
                              color: Colors.grey)
                        ]),
                    child: const Center(
                        child: Text(
                      "4 hr ; 40 km",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.3,
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset("assets/images/ubercab.png"),
                      title: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "yoya Go Rentals $index",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "Comfy, economical Cars",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      trailing: RichText(
                        text: const TextSpan(
                          text: '  Br,',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                              text: '74.53',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 25,
                            height: 25,
                            color: const Color(0xfffd9ffb2),
                            child: Image.asset("assets/images/moneyimage1.png"),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Text(
                            "Cash",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Icon(
                            FontAwesomeIcons.chevronRight,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfffffd00a),
                    ),
                    child: const Center(
                      child: Text(
                        "Confirm Ride",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
