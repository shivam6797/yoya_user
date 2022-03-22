import 'package:flutter/material.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0xfffFFD00A),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            const Padding(
                   padding: EdgeInsets.only(right:230,top: 20),
                   child: Text("Phone",style: TextStyle(fontSize:12,fontWeight:FontWeight.w500,color:Colors.black,fontFamily:'Roboto'),),
                 ),
                 const SizedBox(height:15,),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 50,
                    child: TextField(
                           cursorColor: Colors.green,
                          //  cursorHeight: 25,
                          autofocus: true,
                          keyboardType: TextInputType.phone,
                            style: const TextStyle(
                         fontSize: 20, height: 1.3, fontWeight: FontWeight.w600),
                           decoration: InputDecoration(
                             prefixIcon: const Padding(
                               padding: EdgeInsets.all(12.0),
                               child: Image(image:AssetImage("assets/images/flagimages1.png",)),
                             ),
                             isCollapsed: false,
                             isDense: true,
                            //  filled: true,
                             contentPadding:const EdgeInsets.symmetric(vertical: 12.0,horizontal: 7),
                             hintText: "+251 999879685",
                             hintStyle:const TextStyle(color: Colors.black,fontSize:14,fontWeight: FontWeight.w600),
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide: const BorderSide(color: Color(0xfff707070)),
                               
                             ),
                              focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10),
                               borderSide:const BorderSide(color: Color(0xfff707070)),
                             )
                           ),
                         ),
                      ),
                        Container(
                        margin:const EdgeInsets.symmetric(vertical:25,horizontal: 5),      
                      child: ElevatedButton(onPressed:(){
                      },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          fixedSize: const Size(340,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                      child: const Text("Save",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                    ),
                    ],
                  ),
                );
              }
            }