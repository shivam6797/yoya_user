import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart';
import 'package:yoya_app/repo/sharedprefrencekey.dart';

SPFunction spFunction = SPFunction();

class APIHelper {
  static Future<String> apiGetRequest(String url) async {
     String accecToken = await spFunction.getString(SPKEY.barearToken) ?? "";
    log(accecToken.toString());
    try {
      var response = await get(Uri.parse(url), headers: {
        "Authorization": "Bearer $accecToken",
        "Content-Type": "application/json"
      });
      if (response.statusCode == 200) {
        //var body = jsonDecode(response.body);
        // List<Post> posts = [];
        // body.forEach((e) {
        //   Post post = Post.fromJson(e);
        //   posts.add(post);
        // });

        return response.body;
      } else {
        return '';
      }
    } on SocketException {
      log('SOCKET EXCEPTION OCCURRED');
      return '';
    } on FormatException {
      log('JSON FORMAT EXCEPTION OCCURRED');
      return '';
    } catch (e) {
      log('UNEXPECTED ERROR');
      log(e.toString());
      return '';
    }
  }

  static Future<String> apiPostRequest(String url, body) async {
     String accecToken = await spFunction.getString(SPKEY.barearToken) ?? "";
    log(accecToken.toString());
    try {
      var response = await post(Uri.parse(url),
          headers: {
            "Authorization": "Bearer ",
            "Content-Type": "application/json"
          },
          body: jsonEncode(body));
      if (response.statusCode == 200) {
        //var body = jsonDecode(response.body);
        // List<Post> posts = [];
        // body.forEach((e) {
        //   Post post = Post.fromJson(e);
        //   posts.add(post);
        // });

        return response.body;
      } else {
        return '';
      }
    } on SocketException {
      log('SOCKET EXCEPTION OCCURRED');
      return '';
    } on FormatException {
      log('JSON FORMAT EXCEPTION OCCURRED');
      return '';
    } catch (e) {
      log('UNEXPECTED ERROR');
      log(e.toString());
      return '';
    }
  }
}
