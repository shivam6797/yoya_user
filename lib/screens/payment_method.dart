import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Payment",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color(0xfffFFD00A),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
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
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
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
