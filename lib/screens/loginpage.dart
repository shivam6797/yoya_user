import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:yoya_app/helpers/apihelper.dart';
import 'package:yoya_app/models/countrymodel.dart';
import 'package:yoya_app/screens/otp.dart';
import 'package:yoya_app/screens/signuppage.dart';
import 'package:yoya_app/utils/apis.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String mobileNo = '';
  bool isApiCallProcess = false;
  TextEditingController phoneNo = TextEditingController();

  bool showData = false;
  late LatLng _center;
  late Position currentLocation;
  String location = 'Null, Press Button';
  String lati = '';
  String land = '';
  String Country = '';
  String State = '';
  String City = '';
  String isoCode = '';
  // LatLng pinPosition = LatLng(27.7089427, 85.3086209);
  LatLng? pinPosition;

  Future<Position> locateUser() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    } else if (permission == LocationPermission.whileInUse) {
    } else if (permission == LocationPermission.always) {
    } else if (permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    } else {
      throw Exception('Error');
    }
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation(BuildContext context) async {
    currentLocation = await locateUser();
    // onLoading(context);
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
      lati = currentLocation.latitude.toString();
      land = currentLocation.longitude.toString();
      pinPosition = LatLng(currentLocation.latitude, currentLocation.longitude);
      getAddressFromLatLong();
      showData = true;
    });
    // Navigator.pop(context);
    // print('latitude${currentLocation.latitude}');
    // print('longitude${currentLocation.longitude}');
  }

  getAddressFromLatLong() async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(double.parse(lati), double.parse(land));
    log("placemark==> $placemarks");
    Placemark place = placemarks[0];
    Country = '${place.country}';
    State = '${place.administrativeArea}';
    City = '${place.locality}';
    isoCode = '${place.isoCountryCode}';
    log('Address ${Country.toString()}');
    getCountry(isoCode);

    //setState(() {
    // cityController.text = City.toString();
    // });
  }

  CountryModel getCountryList = CountryModel();
  getCountry(isoCode) async {
    var url = APIS.getCountry + isoCode;
    log("Get Country API " + url.toString());
    var response = await APIHelper.apiGetRequest(url);
    var result = jsonDecode(response);

    log('RESULT==>  $result');
    if (result['status'] == true) {
      var dataResult = jsonDecode(response)['data'][0];

      setState(() {
        getCountryList.id = dataResult['id'].toString();
        getCountryList.countryName = dataResult['countryName'].toString();
        getCountryList.countryCode = dataResult['countryCode'].toString();
        getCountryList.countryDialingCode =
            dataResult['countryDialingCode'].toString();
        getCountryList.flag = dataResult['flag'].toString();

        log('ListData==>  ${getCountryList.flag}');
      });
    }
  }

  loginUser() async {
    var url = APIS.login;
    log("Calling Login Url $url");
    var data = {"phoneNumber": "9910496797"};
    var response = await APIHelper.apiPostRequest(url, data);
    log(response);
    if (jsonDecode(response)['status'] == true) {
      var result = jsonDecode(response)['data'];
      if (result['isExist'] == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpPage(
              mobileno: phoneNo.text.toString(),
            ),
          ),
        );
      } else if (jsonDecode(response)['data']['isExist'] == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignupPage(
              mobileno: phoneNo.text.toString(),
            ),
          ),
        );
      }
    } else if (jsonDecode(response)['status'] == false) {
      if (jsonDecode(response)['data']['isExist'] == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignupPage(
              mobileno: phoneNo.text.toString(),
            ),
          ),
        );
      }
    } else {}
  }
  @override
  void initState() {
    getUserLocation(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                    color: const Color(0xfffFFD00A),
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
                    color: Colors.black,
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
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 50),
              child: Text(
                "Enter mobile number and login",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        color: Colors.grey)
                  ]),
              child: TextField(
                controller: phoneNo,
                maxLines: 1,
                maxLength: 10,
                cursorColor: Colors.green,
                //  cursorHeight: 25,
                autofocus: true,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                    fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.network(
                        getCountryList.flag.toString(),
                        width: 35,
                      ),
                    ),
                    counterText: "",
                    prefixText: getCountryList.countryDialingCode.toString(),
                    isCollapsed: false,
                    isDense: true,
                    //  filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 7),
                    hintText: "+911234567890",
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30, top: 10),
              child: Text(
                "if you continue, you may receive an sms for verification.\nMessage and data rates may apply",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                loginUser();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => OtpPage(mobileno: '')));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
}
