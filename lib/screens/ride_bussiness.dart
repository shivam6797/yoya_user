import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/bussiness_email.dart';
import 'package:yoya_app/utils/colors.dart';

class RideBussinessPage extends StatelessWidget {
  const RideBussinessPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: themeColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
          iconTheme:IconThemeData(color:Colors.black),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, right:100),
                child: Text(
                  "Ride for business",
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
                    Center(child: Image.asset("assets/images/ride_bussiness_image.png")),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                      width: MediaQuery.of(context).size.width,
                      height:50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(FontAwesomeIcons.envelope,size:20,),
                          Padding(
                            padding: EdgeInsets.only(left:30),
                            child: Text("Keep work trips separtae",style:TextStyle(color:Colors.black,fontFamily:"Roboto",fontSize:16,fontWeight:FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Divider(color:themeColor,),
                     Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                      width: MediaQuery.of(context).size.width,
                      height:50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(FontAwesomeIcons.suitcase,size:20,),
                          Padding(
                            padding: EdgeInsets.only(left:30),
                            child: Text("Join an existing account",style:TextStyle(color:Colors.black,fontFamily:"Roboto",fontSize:16,fontWeight:FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Divider(color:themeColor,),
                     Container(
                      margin: EdgeInsets.symmetric(horizontal:20),
                      width: MediaQuery.of(context).size.width,
                      height:50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.note,),
                          Padding(
                            padding: EdgeInsets.only(left:30),
                            child: Text("Make expensing seamless & easy",style:TextStyle(color:Colors.black,fontFamily:"Roboto",fontSize:16,fontWeight:FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                    Divider(color:themeColor,),
                ],
              ),
              bottomNavigationBar: GestureDetector(
                onTap:(){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const BussinessEmailPage()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical:20,horizontal:10),
                  width:MediaQuery.of(context).size.width*0.9,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: Center(child: Text("Join now",textAlign:TextAlign.center,style:TextStyle(color:Colors.white,fontFamily:"Roboto",fontWeight:FontWeight.w500,fontSize:16),)),
                ),
              ),
    );
  }
}