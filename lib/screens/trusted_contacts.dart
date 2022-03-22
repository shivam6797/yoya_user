import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/choose_contact.dart';

class ManageTrustedPage extends StatelessWidget {
  const ManageTrustedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        title: const Text(
          "Trusted Contacts",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 55, top: 20),
            child: Text(
              "Share your trip status",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Icon(
                  Icons.location_on_sharp,
                  color: Color(0xfffFFD00A),
                  size: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nsites still in their infancy.",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xfffFFD00A),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55, top: 20),
            child: Text(
              "Set your emergency contacts",
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 20),
                child: Icon(
                  FontAwesomeIcons.teamspeak,
                  color: Color(0xfffFFD00A),
                  size: 22,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nsites still in their infancy.",
                  style: TextStyle(
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
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>const ChooseContactPage()));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          width: MediaQuery.of(context).size.width * 0.8,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black),
          child: const Center(
              child: Text(
            "Add trusted contact",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
