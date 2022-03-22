import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/landingscreen.dart';
import 'package:yoya_app/screens/privacy.dart';
import 'package:yoya_app/screens/safety.dart';
import 'package:yoya_app/screens/security_privacy.dart';
import 'package:yoya_app/screens/trusted_contacts.dart';

class AccountSettingPage extends StatefulWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  State<AccountSettingPage> createState() => _AccountSettingPageState();
}

class _AccountSettingPageState extends State<AccountSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Account Settings",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xfffFFD00A),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  width: 66,
                  height:66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Colors.grey[350],
                  ),
                  child: const Icon(
                    FontAwesomeIcons.user,
                    size: 25,
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          "Mithun Pratap Singh",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height:8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text("+251 7865489750",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Divider(
              color: Color(0xfffFFD00A),
            ),
            const Padding(
              padding: EdgeInsets.only(left:20, top: 10),
              child: Text(
                "Favorites",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfffFFD00A),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(FontAwesomeIcons.home),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          "Add Home",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(FontAwesomeIcons.shoppingBag),
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          "Add Work",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:18, top: 20),
              child: Text(
                "More Saved Place",
                style: TextStyle(
                    color: Colors.lightBlueAccent[200],
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xfffFFD00A),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Trusted Contacts",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              ),
            ),
            const SizedBox(
              height:15,
            ),
            Container(
              height: 37,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.shield),
                  GestureDetector(
                      onTap: () {
                       Navigator.push(context,MaterialPageRoute(builder:(context)=> const ManageTrustedPage()));
                      },
                      child: const Text(
                        "Manage Trusted Contacts",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w900),
                      ))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left:15),
              child: Text(
                "Share your trip status with family and friends in a single tap",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const Divider(
              color: Color(0xfffFFD00A),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPage()));
                  },
                  child: const Text(
                    "Privacy",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Manage the data you share with us",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const Divider(
              color: Color(0xfffFFD00A),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecurityPage()));
                  },
                  child: const Text(
                    "Security",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left:12),
              child: Text(
                "Control your account security with 2-step verification",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const Divider(
              color: Color(0xfffFFD00A),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SafetyPage()));
                  },
                  child: const Text(
                    "Safety",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(left:12),
              child: Text(
                "Control your account security with 2-step verification",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            const Divider(
              color: Color(0xfffFFD00A),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _renderShowModal();
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                width: MediaQuery.of(context).size.width * 10,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xfffFFD00A),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.black,
                          size: 16,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        "Log Out",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _renderShowModal() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 220,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "Do you want to sign out?",
                  style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Divider(
                color: Color(0xfffFFD00A),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 60),
                child: Text(
                  "Stay signed in to book your next trip faster",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>const LandingScreen()));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xfffFFD00A),
                  ),
                  child: const Center(
                      child: Text(
                    "Confirm sign Out",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w800),
                  )),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>const AccountSettingPage()));
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Colors.black)),
                  child: const Center(
                      child: Text(
                    "Cancel",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w800),
                  )),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
