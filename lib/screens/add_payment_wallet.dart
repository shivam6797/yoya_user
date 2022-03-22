import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/utils/colors.dart';

class AddPaymentWalletPage extends StatefulWidget {
  const AddPaymentWalletPage({ Key? key }) : super(key: key);

  @override
  State<AddPaymentWalletPage> createState() => _AddPaymentWalletPageState();
}

class _AddPaymentWalletPageState extends State<AddPaymentWalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation:0,
        backgroundColor: themeColor,
        title:Text("Add payment meth...",style:TextStyle(color:Colors.black,fontSize:20,fontWeight:FontWeight.w500,fontFamily:"Roboto"),),
        iconTheme:IconThemeData(color:Colors.black),
      ),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
           Container(
            margin: const EdgeInsets.symmetric(vertical:20,horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 5.0,
                      color: Colors.grey)
                ]),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 20,
                color: Colors.lightBlueAccent[100],
                child: Image.asset("assets/images/telebirrimage.png"),
              ),
              title: const Text(
                "Telebirr",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              trailing: Transform.scale(
                scale: 1.5,
                child: Radio(
                    activeColor: const Color(0xfff8D8D8D),
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {
                      setState(() {});
                    }),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 5.0,
                      color: Colors.grey)
                ]),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.creditCard),
              title: const Text(
                "Credit or debit card",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              trailing: Transform.scale(
                scale: 1.5,
                child: Radio(
                    activeColor: themeColor,
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {
                      setState(() {});
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}