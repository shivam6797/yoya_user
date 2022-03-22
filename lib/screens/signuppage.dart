import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:yoya_app/helpers/apihelper.dart';
import 'package:yoya_app/models/city_model.dart';
import 'package:yoya_app/models/countrymodel.dart';
import 'package:yoya_app/models/state_model.dart';
import 'package:yoya_app/screens/loginpage.dart';
import 'package:yoya_app/screens/otp.dart';
import 'package:yoya_app/utils/apis.dart';

// ignore: must_be_immutable
class SignupPage extends StatefulWidget {
  String mobileno;
  SignupPage({Key? key, required this.mobileno}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  String stateid = "";
  String cityid = "";

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

  creteUser() async {
    var url = APIS.register;
    log("Calling Register Url $url");
    var data = {
      "phoneNumber": _phoneController.text,
      "firstName": _firstNameController.text,
      "lastName": _lastNameController.text,
      "email": _emailController.text,
      "cityId": cityid.toString(),
      "contryId": getCountryList.id.toString(),
      "stateId": stateid.toString(),
    };
    var response = await APIHelper.apiPostRequest(url, data);
    if (jsonDecode(response)['status'] == true) {
      var result = jsonDecode(response)['data'];
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpPage(
            mobileno: _phoneController.text.toString(),
          ),
        ),
      );
      SnackBar(
        content: Text(
          jsonDecode(response)['message'].toString(),
        ),
      );
    } else {
      SnackBar(
        content: Text(
          jsonDecode(response)['message'].toString(),
        ),
      );
    }
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
        getState();
        getCity();
        log('ListData==>  ${getCountryList.flag}');
      });
    }
  }

  List<StateModel> getStateList = [];
  getState() async {
    var url = APIS.getState + getCountryList.id.toString();
    log("Get State  API " + url.toString());
    var response = await APIHelper.apiGetRequest(url);
    var result = jsonDecode(response);

    log('State RESULT==>  $result');
    if (result['status'] == true) {
      log('State DatA===>  $response');
      var _list = result['data'] as List;
      setState(() {
        getStateList.clear();

        var listData = _list.map((e) => StateModel.fromJson(e)).toList();
        getStateList.addAll(listData);
      });
    }
  }

  List<CityModel> getCityList = [];
  getCity() async {
    var url =
        APIS.getCity + getCountryList.id.toString() + "&stateId=" + stateid;
    log("Get City  API " + url.toString());
    var response = await APIHelper.apiGetRequest(url);
    var result = jsonDecode(response);

    log('City RESULT==>  $result');
    if (result['status'] == true) {
      log('City DatA===>  $response');
      var _list = result['data'] as List;
      setState(() {
        getCityList.clear();

        var listData = _list.map((e) => CityModel.fromJson(e)).toList();
        getCityList.addAll(listData);
      });
    }
  }

  @override
  void initState() {
    getUserLocation(context);
    _phoneController.text = widget.mobileno;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        leading: const Icon(FontAwesomeIcons.arrowLeft,
            size: 18, color: Colors.black),
        title: const Text(
          "Create Account",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto'),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 180),
                child: Text("Let's Get Started!",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, right: 80),
                child: Text(
                  "Create an account to bullet to get all features",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 260, top: 20),
                child: Text(
                  "First name",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              textFormField(_firstNameController, TextInputType.name,
                  "Enter Your First Name", false, true),
              const Padding(
                padding: EdgeInsets.only(right: 260, top: 30),
                child: Text(
                  "Last name",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              textFormField(_lastNameController, TextInputType.name,
                  "Enter Your Last Name", false, true),
              const Padding(
                padding: EdgeInsets.only(right: 280, top: 30),
                child: Text(
                  "Phone",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextFormField(
                  controller: _phoneController,
                  cursorColor: Colors.green,
                  autofocus: true,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      fontSize: 15, height: 1.3, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      icon: Image.network(
                        getCountryList.flag.toString(),
                        width: 35,
                      ),
                      counterText: "",
                      prefixText: getCountryList.countryDialingCode.toString(),
                      isCollapsed: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 7),
                      hintText: "1234567890",
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xfff707070)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xfff707070)),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280, top: 30),
                child: Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              textFormField(_emailController, TextInputType.emailAddress,
                  "Enter Your email", false, true),
              const Padding(
                padding: EdgeInsets.only(right: 280, top: 30),
                child: Text(
                  "State",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  _renderShowModalState();
                },
                child: textFormField(_stateController, TextInputType.name,
                    "Enter Your state", true, false),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280, top: 30),
                child: Text(
                  "City",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    _renderShowModal();
                  },
                  child: textFormField(_cityController, TextInputType.name,
                      "Enter Your city", true, false)),
              GestureDetector(
                onTap: () {
                  creteUser();
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  width: MediaQuery.of(context).size.width * 10,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Text(
                      "Create",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                  const SizedBox(width: 5.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const Text(
                      "Sign in here",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget textFormField(TextEditingController? controller, TextInputType? type,
      String? value, bool readonly, bool enabled) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.green,
        autofocus: true,
        keyboardType: type,
        readOnly: readonly,
        enabled: enabled,
        style: const TextStyle(
            fontSize: 15, height: 1.3, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
            isCollapsed: false,
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 7),
            hintText: value,
            hintStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xfff707070)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xfff707070)),
            )),
      ),
    );
  }

  _renderShowModal() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFD00A),
              child: const Center(
                  child: Text('Select City',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'))),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: getCityList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                                color: Colors.grey)
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          _cityController.text =
                              getCityList[index].cityName.toString();
                          cityid = getCityList[index].id.toString();

                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Transform.scale(
                            scale: 1.5,
                            child: Radio(
                                activeColor: const Color(0xfffffd00a),
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {
                                  setState(() {});
                                }),
                          ),
                          title: Text(
                            getCityList[index].cityName.toString(),
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _renderShowModalState() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: const Color(0xfffFFD00A),
              child: const Center(
                child: Text(
                  'Select State',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: getStateList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                                color: Colors.grey)
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          _stateController.text =
                              getStateList[index].stateName.toString();
                          stateid = getStateList[index].id.toString();
                          getCity();
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Transform.scale(
                            scale: 1.5,
                            child: Radio(
                                activeColor: const Color(0xfffffd00a),
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {
                                  setState(() {});
                                }),
                          ),
                          title: Text(
                            getStateList[index].stateName.toString(),
                            style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
