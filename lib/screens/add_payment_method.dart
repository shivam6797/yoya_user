import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/payment_method.dart';

class AddpaymentMethod extends StatelessWidget {
  const AddpaymentMethod({ Key? key }) : super(key: key);

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
                  height: 535, 
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
                   child:const Icon(FontAwesomeIcons.arrowLeft,color: Colors.black,size:15,),
                 ),
               ),
                Positioned(
                      top: 160,
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
                height: 180,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 80,top:15),
                      child: Text("How Would you like to pay",style: TextStyle(color: Colors.black,fontSize:20,fontFamily:"Roboto",fontWeight: FontWeight.bold),),
                    ),
                    const Divider(
                      color: Color(0xfffFFD00A),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Text("To complete your request we need your payment\ninformation",style: TextStyle(color: Colors.grey,fontSize:14,fontFamily:"Roboto",fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=> const PaymentMethod()));
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical:22,horizontal: 0),
                        width: MediaQuery.of(context).size.width*0.9,
                        height: 50,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfffFFD00A),
                        ),
                        child: const Center(child: Text("Add payment Method",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize:16,fontFamily:"Roboto",fontWeight: FontWeight.w500),)),
                       ),
                    ),  
                  ],
                ),
              ),
            );
          }
        }