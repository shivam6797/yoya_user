import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yoya_app/repo/sharedprefrencekey.dart';
import 'package:yoya_app/screens/accountsetting.dart';
import 'package:yoya_app/screens/edit_account.dart';
import 'package:yoya_app/screens/history.dart';
import 'package:yoya_app/screens/message.dart';
import 'package:yoya_app/screens/rating_page.dart';
import 'package:yoya_app/screens/splashscreen.dart';
import 'package:yoya_app/screens/upcoming.dart';
import 'package:yoya_app/screens/wallet.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  String? name;
  SPFunction spFunction = SPFunction();
  SharedPreferences? _pref;
  setdetail() async {
    _pref = await SharedPreferences.getInstance();

    setState(() {
      name = _pref!.getString(SPKEY.firstName).toString() +
          _pref!.getString(SPKEY.lastName).toString();
    });

    log(name.toString());
  }

  @override
  void initState() {
    setdetail();
    super.initState();
  }

  userLogout() async {
    var sp = await SharedPreferences.getInstance();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        ),
        (Route<dynamic> route) => false);
    sp.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditAccount()));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.grey[350],
                      ),
                      child: const Icon(
                        FontAwesomeIcons.user,
                        size: 25,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Ratingpage()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(right:130),
                          width: 50,
                          height: 22,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xfffFFD00A),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                FontAwesomeIcons.star,
                                color: Colors.black,
                                size: 12,
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 75,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfffFFD00A),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.lifeRing,
                          size: 30,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Help",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[350],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WalletPage()));
                            },
                            icon: const Icon(
                              FontAwesomeIcons.wallet,
                              size: 30,
                            )),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const WalletPage()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Wallet",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ))
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HistoryPage()));
                    },
                    child: Container(
                      width: 75,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.clock,
                            size: 30,
                          ),
                          SizedBox(height: 9),
                          Text(
                            "History",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const UpcomingDetailPage()));
                    },
                    child: Container(
                      width: 75,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.notesMedical,
                            size: 30,
                          ),
                          SizedBox(height: 9),
                          Text(
                            "Upcom...",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 5, top: 15),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MessagePage()));
                          },
                          icon: const Icon(FontAwesomeIcons.envelope, size: 20),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MessagePage()));
                          },
                          child: const Text(
                            "Messages",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color(0xfffFFD00A),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const AccountSettingPage()));
                      },
                      icon: const Icon(
                        Icons.settings,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AccountSettingPage()));
                          },
                          child: const Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          )),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color(0xfffFFD00A),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Icon(
                        FontAwesomeIcons.car,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27, top: 10),
                      child: Text(
                        "Drive or deliver with yoya",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: ElevatedButton(
                    onPressed: () {
                      userLogout();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xfffFFD00A),
                        fixedSize: const Size(356, 52),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            FontAwesomeIcons.arrowLeft,
                            color: Colors.black,
                            size: 16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Log Out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
