import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/default_payment_method.dart';
import 'package:yoya_app/screens/edit_email_profile.dart';
import 'package:yoya_app/screens/edit_profile_name.dart';
import 'package:yoya_app/utils/colors.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: themeColor,
          automaticallyImplyLeading: false,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
          leading:IconButton(onPressed:(){
            Navigator.of(context).pop();
          }, icon: Icon(
            Icons.close,
            color: Colors.black,
          ),),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 140),
                child: Text(
                  "Profile setting",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500),
                ),
              ),
              preferredSize: Size.fromHeight(50))),
      body: ListView(
        children: [
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>const EditProfileNamePage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.shoppingBag,
                    size: 20,
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Profile name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Personal",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Color(0xfffFFD00A),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>const EditEmailProfilePage()));

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.envelope,
                    size: 20,
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "E-mail for receipt",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Phone92-only-user-b77b5c5a-ec92\n-4455-848c-e46bf63a15e3@fake.yoya\n.com",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Color(0xfffFFD00A),
          ),
          GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>const DefaultPayment()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.payment,
                    size: 20,
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Default payment",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Cash",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Color(0xfffFFD00A),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "When you take a trip using this profile, these perferences\nwill be selecyed by default.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
