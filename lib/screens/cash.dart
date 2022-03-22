import 'package:flutter/material.dart';
import 'package:yoya_app/utils/colors.dart';

class CashPage extends StatelessWidget {
  const CashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor:themeColor,
        iconTheme:IconThemeData(color:Colors.black),
        title:Text("Cash",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w500,fontFamily:"Roboto"),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20,top:20),
            child: Row(
              children: [
                Text("Cash",style:TextStyle(color:Colors.black,fontSize:32,fontFamily:"Roboto",fontWeight:FontWeight.w500),),
                 Container(
                   margin: EdgeInsets.symmetric(horizontal:10),
                   width: 30,
                   height: 30,
                   color: const Color(0xfffd9ffb2),
                   child: Image.asset("assets/images/moneyimage1.png"),
                 ),
              ],
            ),
          ),
          Divider(color:themeColor,),
          Padding(
            padding: const EdgeInsets.only(left:20,top:8),
            child: Text("Pay for trips in cash",style:TextStyle(color:Colors.black,fontSize:16,fontFamily:"Roboto",fontWeight:FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20,top:8),
            child: Text("Your driver's phone will show you the amount to pay at\nthe end of the trip.",style:TextStyle(color:Colors.black,fontSize:14,fontFamily:"Roboto",fontWeight:FontWeight.w500),),
          ),
          
        ],
      ),
    );
  }
}