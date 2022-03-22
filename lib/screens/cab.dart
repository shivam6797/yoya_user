import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/auto_car.dart';

class CabPage extends StatelessWidget {
  const CabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Icon(
                    FontAwesomeIcons.user,
                    size: 10,
                    color: Colors.grey[350],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "For Me",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Icon(
                    FontAwesomeIcons.chevronDown,
                    color: Colors.grey,
                    size: 15,
                  ),
                )
              ],
            )
          ],
        ),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
                    child: Column(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[350]),
                        ),
                        Container(
                          height: 60,
                          color: Colors.black,
                          width: 1,
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 15),
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: 50,
                          child: TextField(
                            cursorColor: Colors.black,
                            //  cursorHeight: 25,
                            autofocus: true,
                            style: const TextStyle(
                                fontSize: 14,
                                height: 1.3,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                isCollapsed: false,
                                isDense: true,
                                //  filled: true,
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 9.0, horizontal: 7),
                                hintText: "D -77, Sector 63 Rd",
                                hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1.5)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1.5))),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: 50,
                            child: TextField(
                              cursorColor: Colors.black,
                              //  cursorHeight: 25,
                              autofocus: true,
                              style: const TextStyle(
                                  fontSize: 14,
                                  height: 1.3,
                                  fontWeight: FontWeight.bold),
                              decoration: InputDecoration(
                                  isCollapsed: false,
                                  isDense: true,
                                  //  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 9.0, horizontal: 7),
                                  hintText: "Where to?",
                                  hintStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 1.5)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 1.5))),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10, bottom: 13),
                            child: Icon(
                              FontAwesomeIcons.plus,
                              size: 17,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            preferredSize: const Size.fromHeight(130)),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    child: const Icon(
                      FontAwesomeIcons.star,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  const Text("Saved places",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto")),
                ],
              ),
              const Divider(
                color: Color(0xfffffd00a),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RidePage()));
                          },
                          child: Container(
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width,
                            height: 46,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 8),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.grey),
                                  child: const Icon(
                                    FontAwesomeIcons.star,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  children: const [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 135, top: 15),
                                      child: Text("Shri Ram Hospital",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Roboto")),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        "Dadri main Rd, Kohli Vihar, Natthu Colony, Baraula,...",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Roboto")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey[350],
                        )
                      ],
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
