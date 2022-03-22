import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/user_profile.dart';

class ChooseContactPage extends StatelessWidget {
  const ChooseContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        title: const Text(
          "Choose Contact",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfffE6E6E6),
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      //  cursorHeight: 25,
                      autofocus: true,
                      style: const TextStyle(
                          fontSize: 15,
                          height: 1.2,
                          fontWeight: FontWeight.bold),
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
                          hintText: "Search name or number",
                          hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 5),
                    child: Text(
                      'Device Contacts',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            preferredSize: const Size.fromHeight(100)),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>const UserProfilePage()));
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
                                        color: const Color(0xfff0871AE)),
                                    child: const Center(
                                        child: Text(
                                      "A",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold),
                                    ))),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 9),
                                      child: Text("Aayushi",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Roboto")),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("786486588",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
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
