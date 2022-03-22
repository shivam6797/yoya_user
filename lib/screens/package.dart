import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 196,
                        color: Colors.transparent,
                        child: Image.asset(
                          "assets/images/packageimage.png",
                          fit: BoxFit.cover,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                FontAwesomeIcons.arrowLeft,
                                size: 15,
                              ),
                            )),
                        Container(
                            margin: const EdgeInsets.only(left: 50, top: 20),
                            width: 101,
                            height: 37,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(FontAwesomeIcons.infoCircle),
                                Text(
                                  "What to send",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )),
                      ],
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: const Color(0xfffFFD00A),
                  child: const Center(
                      child: Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: Text(
                      "Who's receiving the package",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ),
              ],
            ),
            preferredSize: Size.fromHeight(190)),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8, right: 70),
              child: Text(
                "The driver may contact the recipient to\ncomplete the delivery.",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                "Name",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 40,
              child: TextField(
                cursorColor: Colors.black,
                //  cursorHeight: 25,
                autofocus: true,
                style: const TextStyle(
                    fontSize: 14, height: 1.3, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    isCollapsed: false,
                    isDense: true,
                    //  filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 7),
                    hintText: "Enter name",
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.5))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                "Phone number",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/flagimages1.png",
                    width: 44,
                    height: 44,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 36,
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
                          hintText: "+251 86985679876",
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
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFD00A),
              child: const Center(
                  child: Padding(
                padding: EdgeInsets.only(right: 60),
                child: Text(
                  "Who's Sending the package",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, right: 70),
              child: Text(
                "The driver may contact the recipient to\ncomplete the delivery.",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                "Name",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 40,
              child: TextField(
                cursorColor: Colors.black,
                //  cursorHeight: 25,
                autofocus: true,
                style: const TextStyle(
                    fontSize: 14, height: 1.2, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    isCollapsed: false,
                    isDense: true,
                    //  filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 7),
                    hintText: "Enter name",
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1.5))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text(
                "Phone number",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/flagimages1.png",
                    width: 44,
                    height: 44,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 36,
                    child: TextField(
                      cursorColor: Colors.black,
                      //  cursorHeight: 25,
                      autofocus: true,
                      style: const TextStyle(
                          fontSize: 14,
                          height: 1.2,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          isCollapsed: false,
                          isDense: true,
                          //  filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 7),
                          hintText: "+251 86985679876",
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
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfffffd00a),
              ),
              child: const Center(
                child: Text(
                  "Confirm recipient",
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
    );
  }
}
