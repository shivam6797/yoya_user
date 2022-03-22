import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/add_payment_method.dart';

class PickupLocationPage extends StatelessWidget {
  const PickupLocationPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.transparent,
          height:MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Stack(
               children: [
                  Container(
                   color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: 588, 
                  child: Image.asset("assets/images/destinationimage.png",fit: BoxFit.cover,)
                ),
               GestureDetector(
                 onTap: (){
                   Navigator.pop(context);
                 },
                 child: Container(
                   margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                   width: 35,
                   height: 35,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: const Color(0xffFFFFFF),
                   ),
                   child:const Icon(FontAwesomeIcons.arrowLeft,color: Color(0xfffFFD00A),size:17,),
                 ),
               ),
                  Positioned(
                    top: 105,
                    left:20,
                    child: Container(
                                width: MediaQuery.of(context).size.width*0.9,
                                height: 50,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                ),
                                child: const Center(child: Text("Confirm your pick-up location",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize:20,fontFamily:"Roboto",fontWeight: FontWeight.w500),)),
                              ),
                           ),
                        Positioned(
                          top: 190,
                          left:195,
                          child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xfff4084F4),
                                ),
                                child: const Center(child: Text("Meet driver here",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:8,fontFamily:"Roboto",fontWeight: FontWeight.w500),)),
                              ),
                              ),
                          ],
                        )
                        ],
                      ),
                    ),
                  bottomNavigationBar: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 12,right: 60),
                              child: Text("D-77, Sector 63 Rd",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily:'Roboto'),),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 12),
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[350],
                              ),
                              child: const Center(child: Text("Search",textAlign:TextAlign.center,style: TextStyle(fontSize:11,fontWeight: FontWeight.bold,fontFamily:'Roboto'),)),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder:(context)=> const AddpaymentMethod()));
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical:23,horizontal: 0),
                            width: MediaQuery.of(context).size.width*0.9,
                            height: 50,
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xfffFFD00A),
                            ),
                            child: const Center(child: Text("Confirm pick-up",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize:20,fontFamily:"Roboto",fontWeight: FontWeight.w500),)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            }