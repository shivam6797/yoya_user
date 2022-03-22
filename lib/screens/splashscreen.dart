import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yoya_app/repo/sharedprefrencekey.dart';
import 'package:yoya_app/screens/landingscreen.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SPFunction spFunction = SPFunction();
  @override
  void initState() {
    super.initState();
   redirect();
  }

redirect() async {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        var sp = await SharedPreferences.getInstance();
        if (sp.containsKey(SPKEY.id)) {
          print(sp.containsKey(SPKEY.id));
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (Route<dynamic> route) => false);
        } else {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => LandingScreen(),
              ),
              (Route<dynamic> route) => false);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  color: Colors.transparent,
                  child: const Image(
                      image: AssetImage("assets/images/yoyalogo.png")))
            ],
          )
        ],
      ),
    );
  }
}
