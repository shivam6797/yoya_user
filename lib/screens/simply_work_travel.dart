import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/bussiness_email.dart';
import 'package:yoya_app/screens/ride_bussiness.dart';
import 'package:yoya_app/utils/colors.dart';

class SimplyWorkTravelPage extends StatelessWidget {
  const SimplyWorkTravelPage({ Key? key }) : super(key: key);

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
                padding: const EdgeInsets.only(bottom: 20, right:80),
                child: Text(
                  "Simplify work travel",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500),
                ),
              ),
              preferredSize: Size.fromHeight(50))),
       body:ListView(
         children: 
           [Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment:CrossAxisAlignment.start,
             children: [
               Center(child: Image.asset("assets/images/simply_work_travel.png")),
               GestureDetector(
                 onTap:(){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>const RideBussinessPage()));
                 },
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical:30),
                   width:MediaQuery.of(context).size.width,
                   height:50,
                   color:Colors.transparent,
                   child:ListTile(
                     leading:Icon(FontAwesomeIcons.user),
                     title: Text("Ride for business",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontFamily:'Roboto',fontSize:16),),
                     subtitle: Text("Get receipts emailed to a work inbox,\nkeep work trips separate and more",style:TextStyle(color:Colors.grey,fontWeight:FontWeight.w500,fontFamily:'Roboto',fontSize:14),),
                     trailing:Icon(FontAwesomeIcons.chevronRight,size:20,)
                   ),
                 ),
               ),
               Divider(color:themeColor,),
                 GestureDetector(
                   onTap:(){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>const BussinessEmailPage()));
                   },
                   child: Container(
                   margin: EdgeInsets.symmetric(vertical:10),
                   width:MediaQuery.of(context).size.width,
                   height:50,
                   color:Colors.transparent,
                   child:ListTile(
                     leading:Icon(FontAwesomeIcons.userPlus),
                     title: Text("Join an existing account",style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontFamily:'Roboto',fontSize:16),),
                     subtitle: Text("Link your account to a business and\nstart expensing eligible trips",style:TextStyle(color:Colors.grey,fontWeight:FontWeight.w500,fontFamily:'Roboto',fontSize:14),),
                     trailing:Icon(FontAwesomeIcons.chevronRight,size:20,)
                   ),
                                ),
                 ),
                Divider(color:themeColor,),
             ],
           ),
         ],
       ) ,       
    );
  }
}