import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffFFD00A),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Choose a Ride",
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: 90,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfffFFD00A),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "Past",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                GestureDetector(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              content: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ListTile(
                                      title: const Text(
                                        "Past",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      trailing: Transform.scale(
                                        scale: 1.5,
                                        child: Radio(
                                            activeColor:
                                                const Color(0xfffffd00a),
                                            value: 1,
                                            groupValue: 1,
                                            onChanged: (value) {
                                              setState(() {});
                                            }),
                                      ),
                                    ),
                                    const Divider(
                                      color: Color(0xfffFFD00A),
                                    ),
                                    const Text(
                                      "Business",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const Divider(
                                      color: Color(0xfffFFD00A),
                                    ),
                                    const Text(
                                      "Upcoming",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ));
                        }),
                    child: const Icon(
                      FontAwesomeIcons.chevronDown,
                      size: 15,
                    )),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "02/11/21,14:40",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: RichText(
                                text: const TextSpan(
                                    text: 'Br,',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                    children: [
                                  TextSpan(
                                    text: ' 0.00',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: RichText(
                                text: const TextSpan(
                                    text: 'CASH',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                    children: [
                                  TextSpan(
                                    text: '  Cancelled',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ])),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20, top: 5, left: 10),
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 151,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 0.2)),
              child: Image.asset(
                "assets/images/history_image.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "02/11/21,14:40",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: RichText(
                                text: const TextSpan(
                                    text: 'Br,',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                    children: [
                                  TextSpan(
                                    text: ' 0.00',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: RichText(
                                text: const TextSpan(
                                    text: 'CASH',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                    children: [
                                  TextSpan(
                                    text: '  Cancelled',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500),
                                  )
                                ])),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20, top: 5, left: 10),
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 151,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 0.2)),
              child: Image.asset(
                "assets/images/history_image.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "05/12/21,08:39",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          "Maruti Suzuki Swift Dzire",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                              text: const TextSpan(
                                  text: 'Br,',
                                  style: TextStyle(
                                      color: Color(0xfffFE6E41),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                  children: [
                                TextSpan(
                                  text: ' 0.65',
                                  style: TextStyle(
                                      color: Color(0xfffFE6E41),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                )
                              ])),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: RichText(
                                text: const TextSpan(
                              text: 'Unpaid',
                              style: TextStyle(
                                  color: Color(0xfffFE6E41),
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20, top: 5, left: 10),
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 151,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 0.2)),
              child: Image.asset(
                "assets/images/history_image.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFFFFF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "02/11/21,10:45",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          "Bajaj Auto",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                              text: const TextSpan(
                                  text: 'Br,',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                  children: [
                                TextSpan(
                                  text: ' 0.58',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                )
                              ])),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: RichText(
                                text: const TextSpan(
                              text: 'CASH',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20, top: 5, left: 10),
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 151,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 0.2)),
              child: Image.asset(
                "assets/images/history_image.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
