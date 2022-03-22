import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/phonenumber.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  _onchange() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PhoneNumberPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Edit Account",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontFamily: 'Roboto'),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
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
                    Positioned(
                      top: 56,
                      left: 25,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.pencilAlt,
                          color: Colors.white,
                          size: 10,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color(0xfffFFD00A),
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
                height: 15,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextField(
                  cursorColor: Colors.green,
                  //  cursorHeight: 25,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      isCollapsed: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 7),
                      hintText: "Enter Your First Name",
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
                padding: EdgeInsets.only(right: 260, top: 20),
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
                height: 15,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextField(
                  cursorColor: Colors.green,
                  //  cursorHeight: 25,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      isCollapsed: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 7),
                      hintText: "Enter your last name",
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 230),
                child: Text(
                  "Phone number",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextField(
                  // onChanged:_onchange(),
                  cursorColor: Colors.green,
                  //  cursorHeight: 25,
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                      fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      filled: false,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Image(
                            image: AssetImage(
                          "assets/images/flagimages1.png",
                        )),
                      ),
                      suffixText: "Verified",
                      suffixStyle: const TextStyle(
                          color: Color(0xfff097106),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                      isCollapsed: false,
                      isDense: true,
                      //  filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 7),
                      hintText: "+251 999879685",
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 280),
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
                height: 15,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextField(
                  cursorColor: Colors.green,
                  //  cursorHeight: 25,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      suffixText: "Unverified",
                      suffixStyle: const TextStyle(
                          color: Color(0xfffFF0000),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto'),
                      isCollapsed: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 7),
                      hintText: "   shivampratap234@gmail.com",
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
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 260),
                child: Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: TextField(
                  cursorColor: Colors.green,
                  //  cursorHeight: 25,
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(
                      fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      isCollapsed: false,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 7),
                      hintText: "   **********",
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black),
                child: const Center(
                    child: Text(
                  "Save",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
