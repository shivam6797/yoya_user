import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0,
        backgroundColor: const Color(0xfffFFD00A),
         title: const Text("Messages",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon:const Icon(FontAwesomeIcons.times,size: 22,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
              width: MediaQuery.of(context).size.width*0.8,
              height: 170,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                    child: const Icon(FontAwesomeIcons.tag,color: Colors.white,size: 15),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("50%off upto ₹75",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ),
                  const Text("Limited period offer valid for first 5 yoya",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  const Text("trips",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}