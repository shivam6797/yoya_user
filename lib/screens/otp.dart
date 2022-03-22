import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:yoya_app/helpers/apihelper.dart';
import 'package:yoya_app/repo/sharedprefrencekey.dart';
import 'package:yoya_app/screens/homepage.dart';
import 'package:yoya_app/screens/new_home_page.dart';
import 'package:yoya_app/screens/signuppage.dart';
import 'package:yoya_app/utils/apis.dart';

// ignore: must_be_immutable
class OtpPage extends StatefulWidget {
  String mobileno;
  OtpPage({Key? key, required this.mobileno}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  SPFunction spFunction = SPFunction();
  verifyOtp() async {
    var url = APIS.verifyOtp;
    // ignore: avoid_print
    print("Calling Otp Url $url");
    var data = {
      "phoneNumber": widget.mobileno,
      "otp": _putOtpController.text,
    };
    var response = await APIHelper.apiPostRequest(url, data);
    if (jsonDecode(response)['status'] == true) {
      var result = jsonDecode(response)['data'];
      var driver_result = jsonDecode(response)['data']['driver'];

      spFunction.setString(SPKEY.barearToken, result['accessToken'] ?? "");
      spFunction.setString(SPKEY.id, driver_result['driverId']);
      spFunction.setString(
          SPKEY.phoneNumber, driver_result['phoneNumber'].toString());
      spFunction.setString(
          SPKEY.firstName, driver_result['firstName'].toString());
      spFunction.setString(
          SPKEY.lastName, driver_result['lastName'].toString());
      spFunction.setString(SPKEY.email, driver_result['email'].toString());
      log(await spFunction.getString(SPKEY.id) ?? "");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  final TextEditingController _putOtpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f6fb),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: const Center(
                      child: Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xfffFFD00A),
                  ),
                  child: const Center(
                      child: Text(
                    "2",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: const Center(
                      child: Text(
                    "3",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "yoya",
              textScaleFactor: 2.0,
              style: TextStyle(
                  color: Color(0xfffFFD00A),
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 20),
              child: Text(
                "We sent OTP code to verify your\nnumber ${widget.mobileno.toString()}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            darkRoundedPinPut(),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                verifyOtp();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomePage ()));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                width: MediaQuery.of(context).size.width * 10,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 120),
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Icon(
                        FontAwesomeIcons.arrowRight,
                        color: Colors.white,
                        size: 16,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget darkRoundedPinPut() {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.grey.shade400,
      borderRadius: BorderRadius.circular(10.0),
    );
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: PinPut(
        controller: _putOtpController,
        eachFieldWidth: 60,
        eachFieldHeight: 60.0,
        withCursor: true,
        fieldsCount: 4,
        submittedFieldDecoration: pinPutDecoration,
        selectedFieldDecoration: const BoxDecoration(
          color: Color(0xfffFFD00A),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        followingFieldDecoration: pinPutDecoration,
        pinAnimationType: PinAnimationType.scale,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25.0,
          height: 1,
        ),
      ),
    );
  }
}
