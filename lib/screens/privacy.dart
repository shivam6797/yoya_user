import 'package:flutter/material.dart';
import 'package:yoya_app/screens/landingscreen.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        title: const Text(
          "Privacy",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Location",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  "Update your location sharing preferences.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xfffFFD00A),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 5),
                child: Text(
                  "Control what messages you receive from yoya.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>const LandingScreen()));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfffFFC4C4)),
          child: const Center(
              child: Text(
            "Delete Your Account",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xfffFF0000),
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
