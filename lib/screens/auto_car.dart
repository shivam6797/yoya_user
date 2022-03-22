import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/payment_method.dart';
import 'package:yoya_app/screens/pickup_location.dart';

class RidePage extends StatefulWidget {
  const RidePage({ Key? key }) : super(key: key);

  @override
  State<RidePage> createState() => _RidePageState();
}

class _RidePageState extends State<RidePage> {
   @override
  void initState() {
    Future.delayed(const Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Color(0xfff7f6fb),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: 
                  [Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        width: 60,
                        height: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Icon(FontAwesomeIcons.tag,color:Color(0xfffffd00a),size: 12,),
                          ),
                          Text("9% Promotion applied",style: TextStyle(fontSize : 12,fontWeight: FontWeight.bold,fontFamily:'Roboto'),)
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orange[100],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Image.asset("assets/images/Bike.png"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 90,top: 15),
                                  child: Column(
                                    children:[
                                     Row(
                                       children: const [
                                           Text("Moto",style: TextStyle(fontSize: 18,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
                                           Padding(
                                             padding: EdgeInsets.only(left: 8),
                                             child: Icon(FontAwesomeIcons.user,size: 15,),
                                           ),
                                           Text("1",style: TextStyle(fontSize:10,fontFamily: 'Roboto',fontWeight: FontWeight.w500),)
                                       ],
                                     ),
                                     const SizedBox(height: 2,),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text("15:02 drop-off",style: TextStyle(fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 45),
                                        child: Text("Faster",style: TextStyle(color: Color(0xfff073A9F),fontSize:9,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
                                      ),
                                   ],
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,right: 20),
                                    child: Column(
                                    children: [
                                     Row(
                                       children: [
                                         const Icon(FontAwesomeIcons.tag,color: Colors.green,size: 10,),
                                         const SizedBox(height: 5,),
                                          RichText(text: const TextSpan(
                                       text: '  Br,' ,
                                       style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w500),
                                       children: [
                                         TextSpan(
                                           text: '74.53',style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'Roboto',fontWeight:FontWeight.bold )
                                         )
                                       ]
                                      )),
                                       ],
                                     ),
                                     const SizedBox(
                                       height: 5,
                                     ),
                                      RichText(text: const TextSpan(
                                       text: '  Br,' ,
                                       style: TextStyle(color: Colors.black,fontSize: 9,fontFamily: 'Roboto',fontWeight: FontWeight.w500),
                                       children: [
                                         TextSpan(
                                           text: '81.49',style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Roboto',fontWeight:FontWeight.bold,decoration:TextDecoration.lineThrough )
                                         )
                                       ]
                                     )) 
                                  ],
                                ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                       Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Image.asset("assets/images/auto_rickshow.png"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 90,top: 25),
                                  child: Column(
                                    children:const [
                                     Text("yoya Auto",style: TextStyle(fontSize: 18,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
                                      Padding(
                                        padding: EdgeInsets.only(right:50),
                                        child: Text("15:02",style: TextStyle(fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                                      ),
                                   ],
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25,right: 10),
                                    child: Column(
                                    children: [
                                     Row(
                                       children: [
                                         const Icon(FontAwesomeIcons.tag,color: Colors.green,size: 10,),
                                         const SizedBox(height: 5,),
                                          RichText(text: const TextSpan(
                                       text: '  Br,' ,
                                       style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w500),
                                       children: [
                                         TextSpan(
                                           text: '103.38',style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'Roboto',fontWeight:FontWeight.bold )
                                         )
                                       ]
                                     )),
                                       ],
                                     ),
                                     const SizedBox(
                                       height: 5,
                                     ),
                                      RichText(text: const TextSpan(
                                       text: '  Br,' ,
                                       style: TextStyle(color: Colors.black,fontSize: 9,fontFamily: 'Roboto',fontWeight: FontWeight.w500),
                                       children: [
                                         TextSpan(
                                           text: '128.38',style: TextStyle(color: Colors.black,fontSize: 11,fontFamily: 'Roboto',fontWeight:FontWeight.bold,decoration:TextDecoration.lineThrough )
                                         )
                                       ]
                                     ))  
                                 ],
                                ),
                                  ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                      color:  Color(0xfffFFD00A),
                       ),
                       Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Image.asset("assets/images/ubercab.png"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right:70,top: 20),
                                  child: Column(
                                    children:const [
                                     Padding(
                                       padding: EdgeInsets.only(right:40),
                                       child: Text("yoya Go",style: TextStyle(fontSize: 18,fontFamily: 'Roboto',fontWeight: FontWeight.bold),),
                                     ),
                                      Padding(
                                        padding: EdgeInsets.only(right:70),
                                        child: Text("15:03",style: TextStyle(fontSize: 14,fontFamily: 'Roboto',fontWeight: FontWeight.w500),),
                                      ),
                                   ],
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:28,right: 15),
                                    child: Column(
                                    children: [
                                     Row(
                                       children: [
                                         const Icon(FontAwesomeIcons.tag,color: Colors.green,size: 10,),
                                         const SizedBox(height: 5,),
                                          RichText(text: const TextSpan(
                                       text: '  Br,' ,
                                       style: TextStyle(color: Colors.black,fontSize: 12,fontFamily: 'Roboto',fontWeight: FontWeight.w500),
                                       children: [
                                         TextSpan(
                                           text: '176.47',style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'Roboto',fontWeight:FontWeight.bold )
                                         )
                                       ]
                                     )),
                                       ],
                                     ),
                                 ],
                                ),
                                  ),
                              ],
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                           Navigator.push(context,MaterialPageRoute(builder:(context)=> const PaymentMethod()));
                        },
                        child: Container(
                                       width: MediaQuery.of(context).size.width,
                                       height: 50,
                                       decoration: const BoxDecoration(
                                         borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),
                                         color: Color(0xfffFFD00A),
                                        ),
                                       child: ListTile(
                                         leading:const Icon(FontAwesomeIcons.idCard),
                      title: const Padding(
                        padding: EdgeInsets.only(right:10),
                        child: Text("Add payment method",style: TextStyle(fontSize:18,fontFamily:'Roboto',fontWeight: FontWeight.bold),),
                      ),
                       trailing: Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: IconButton(onPressed:(){
                             Navigator.push(context,MaterialPageRoute(builder:(context)=> const PaymentMethod()));
                         }, icon:const Icon(FontAwesomeIcons.angleRight),)
                         )
                      ),
                   ),
                      ),
                   const SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       GestureDetector(
                         onTap: (){
                           Navigator.push(context,MaterialPageRoute(builder:(context)=> const PickupLocationPage()));
                         },
                         child: Container(
                           width: MediaQuery.of(context).size.width*0.4,
                           height: 50,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: const Color(0xfffFFD00A),
                           ),
                           child: const Center(child: Text("Confirm Moto",textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontFamily:'Roboto',fontWeight: FontWeight.w500),)),
                         ),
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width*0.4,
                         height: 50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: const Color(0xfffD6D6D6),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: const [
                             Text("Schedule",style: TextStyle(fontSize: 16,fontFamily:'Roboto',fontWeight: FontWeight.w500),),
                             Padding(
                               padding: EdgeInsets.all(8.0),
                               child: Icon(FontAwesomeIcons.car),
                             )
                           ],
                         )
                       )
                     ],
                   )
                    ],
                  ),
                ],
              ),
            );
          });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Stack(
             children: [
                Container(
                 color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height, 
                child: Image.asset("assets/images/homeimage1.png",fit: BoxFit.cover,)
              ),
             GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Container(
                 margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
                 width: 30,
                 height: 30,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.grey[100]
                 ),
                 child:  const Icon(FontAwesomeIcons.arrowLeft,color: Colors.black87,size:15,),
               ),
             )
             ],
           )
          ],
        ),
      ),
    );
  }
}