import 'package:flutter/material.dart';
import 'package:yoya_app/utils/colors.dart';

class EditProfileNamePage extends StatelessWidget {
  const EditProfileNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Edit Profile Name",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 25),
            child: Text(
              "Profile Name",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Roboto",
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            child: TextField(
              cursorColor: Colors.black,
              //  cursorHeight: 25,
              autofocus: true,
              style: const TextStyle(
                  fontSize: 14, height: 1.3, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  isCollapsed: false,
                  isDense: true,
                  suffixIcon: Icon(
                    Icons.cancel,
                    color: Colors.black,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 20.0, horizontal: 7),
                  hintText: "Personal",
                  hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5))),
            ),
          ),
        ],
      ),
    );
  }
}
