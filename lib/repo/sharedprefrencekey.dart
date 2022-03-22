import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

class SPKEY extends ChangeNotifier {
  static const String barearToken = "barearToken";
  static const String id = "id";
  static const String phoneNumber = "phoneNumber";
  static const String firstName = "firstName";
  static const String lastName = "lastName";
  static const String email = "email";

  late SharedPreferences userdata;
  SharedPreferences get fulldata => userdata;

  setusername(SharedPreferences fulluserdata) {
    userdata = fulluserdata;
    notifyListeners();
  }

  init() async {
    userdata = await SharedPreferences.getInstance();
  }

  String xyz = '';
  String get getxyz => xyz;

  setstatedata(xyzdata) {
    xyz = xyzdata;
    notifyListeners();
  }
}

class SPFunction {
  /// Adding a string value
  dynamic setString(key, val) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    var _res = _prefs.setString("$key", val);
    return _res;
  }

  /// Get string value
  /// Argument [key]
  dynamic getString(key) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? _res = _prefs.getString("$key");
    return _res;
  }
}