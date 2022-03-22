import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UpcomingDetailPage extends StatefulWidget {
  const UpcomingDetailPage({Key? key}) : super(key: key);

  @override
  State<UpcomingDetailPage> createState() => _UpcomingDetailPageState();
}

class _UpcomingDetailPageState extends State<UpcomingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Upcoming Rides",
          style: TextStyle(
              fontSize: 22, fontFamily: 'Roboto', fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 230,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 0.2)),
                      child: Image.asset(
                        "assets/images/history_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  children: const [
                                    Text(
                                      "David Jonsan",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 40),
                                      child: Text(
                                        "Pending",
                                        style: TextStyle(
                                            color: Color(0xfffFFD00A),
                                            fontSize: 10,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: RichText(
                                          text: const TextSpan(
                                              text: 'Br,',
                                              style: TextStyle(
                                                  color: Color(0xfffFFD00A),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500),
                                              children: [
                                            TextSpan(
                                              text: ' 25.00',
                                              style: TextStyle(
                                                  color: Color(0xfffFFD00A),
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ])),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: RichText(
                                          text: const TextSpan(
                                              text: '2',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500),
                                              children: [
                                            TextSpan(
                                              text: '  Seats',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ])),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              //  margin: EdgeInsets.symmetric(vertical: 1),
                              child: Radio(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: const Color(0xfff8D8D8D),
                                  value: 1,
                                  groupValue: 1,
                                  onChanged: (value) {
                                    setState(() {});
                                  }),
                            ),
                            Container(
                              height: 20,
                              color: Colors.black,
                              width: 1,
                            ),
                            Container(
                              color: Colors.transparent,
                              // margin: EdgeInsets.symmetric(vertical: 10),
                              child: Radio(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  activeColor: Colors.yellow,
                                  value: 1,
                                  groupValue: 1,
                                  onChanged: (value) {
                                    setState(() {});
                                  }),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              color: Colors.transparent,
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: const ListTile(
                                title: Text("Pickup Point",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500)),
                                subtitle: Text(
                                  "Dadri Maen Roade Delhi 92",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Text(
                                  "9:00 AM",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: const ListTile(
                                title: Text("Designation",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500)),
                                subtitle: Text(
                                  "Dwarka Sec 21 Metro Station",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500),
                                ),
                                trailing: Text(
                                  "9:30 AM",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Date",
                                style: TextStyle(
                                    color: Color(0xfffFFD00A),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "22-Jan-2022",
                                style: TextStyle(
                                    color: Color(0xfff8D8D8D),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Expected Time",
                                style: TextStyle(
                                    color: Color(0xfffFFD00A),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "8:50",
                                style: TextStyle(
                                    color: Color(0xfff8D8D8D),
                                    fontSize: 10,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xfffFFD00A)),
                            child: const Center(
                                child: Text(
                              "Message",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            )),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
