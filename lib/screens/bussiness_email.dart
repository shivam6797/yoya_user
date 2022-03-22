import 'package:flutter/material.dart';
import 'package:yoya_app/utils/colors.dart';

class BussinessEmailPage extends StatelessWidget {
  const BussinessEmailPage({ Key? key }) : super(key: key);

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
                padding: const EdgeInsets.only(bottom:10,left:20),
                child: Text(
                  "What's your business email?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500),
                ),
              ),
              preferredSize: Size.fromHeight(70))),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: const EdgeInsets.only(left:20,top:20),
            child: Text("Bussiness email address",style:TextStyle(color:Colors.black,fontSize:14,fontFamily:"Roboto",fontWeight:FontWeight.w600),),
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
                  fontSize: 16, height: 1.3, fontWeight: FontWeight.bold),
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
                      fontSize: 16,
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
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height:120,
          child: Column(
            children: [
              Container(
                      margin: EdgeInsets.symmetric(horizontal:10),
                      width:MediaQuery.of(context).size.width*0.9,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black,
                      ),
                      child: Center(child: Text("Next",textAlign:TextAlign.center,style:TextStyle(color:Colors.white,fontFamily:"Roboto",fontWeight:FontWeight.w500,fontSize:16),)),
                    ),
                     Container(
                      margin: EdgeInsets.symmetric(vertical:10,horizontal:10),
                      width:MediaQuery.of(context).size.width*0.9,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xfffEFEFEF),
                      ),
                      child: Center(child: Text("Skip",textAlign:TextAlign.center,style:TextStyle(color:Colors.black,fontFamily:"Roboto",fontWeight:FontWeight.w500,fontSize:16),)),
                    ),
            ],
          ),
        ),        
    );
  }
}