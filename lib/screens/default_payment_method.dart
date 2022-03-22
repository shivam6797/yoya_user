import 'package:flutter/material.dart';
import 'package:yoya_app/utils/colors.dart';

class DefaultPayment extends StatefulWidget {
  const DefaultPayment({Key? key}) : super(key: key);

  @override
  State<DefaultPayment> createState() => _DefaultPaymentState();
}

class _DefaultPaymentState extends State<DefaultPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Default Payment",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "Payment Method",
              style: TextStyle(
                  color: Color(0xfff696969),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 25,
                  height: 25,
                  color: const Color(0xfffd9ffb2),
                  child: Image.asset("assets/images/moneyimage1.png"),
                ),
              ),
              title: const Text(
                "Cash",
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
              trailing: Transform.scale(
                scale: 1.5,
                child: Radio(
                    activeColor: const Color(0xfffffd00a),
                    value: 1,
                    groupValue: 1,
                    onChanged: (value) {
                      setState(() {});
                    }),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Add payment method",
              style: TextStyle(
                  color: Color(0xfff3f92bc),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
