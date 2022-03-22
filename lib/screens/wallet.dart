import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/add_payment_wallet.dart';
import 'package:yoya_app/screens/cash.dart';
import 'package:yoya_app/screens/profile_setting.dart';
import 'package:yoya_app/screens/simply_work_travel.dart';
import 'package:yoya_app/screens/vouchers.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xfffffd00a),
          title: const Text(
            "Wallet",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                FontAwesomeIcons.arrowLeft,
                size: 19,
              )),
          bottom: PreferredSize(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 53,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                    color: Color(0xfffd9ffb2),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff00000029),
                        blurRadius: 4.0,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "yoya Cash",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Br,0.00",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              preferredSize: const Size.fromHeight(45)),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CashPage()));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(right: 180),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AddPaymentWalletPage()));
                  },
                  child: Text(
                    "Add payment method",
                    style: TextStyle(
                        color: Color(0xfff3f92bc),
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Color(0xfffffd00a),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240, top: 15),
                child: Text(
                  "Trip Profile",
                  style: TextStyle(
                      color: Color(0xfff696969),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileSetting()));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        FontAwesomeIcons.user,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text(
                      "Personal",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[350],
                    ),
                    child: const Icon(
                      FontAwesomeIcons.shoppingBag,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5, right: 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SimplyWorkTravelPage()));
                          },
                          child: Text(
                            "Start using yoya for Business",
                            style: TextStyle(
                                color: Color(0xfff3f92bc),
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Turn on business travel feature",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Color(0xfffffd00a),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240, top: 15),
                child: Text(
                  "Vouchers",
                  style: TextStyle(
                      color: Color(0xfff696969),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VouchersPage()));
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    leading: Image.asset(
                      "assets/images/vouchercoupons.png",
                      width: 35,
                      height: 35,
                    ),
                    title: const Text(
                      "Vouchers",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500),
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
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 180),
                child: Text(
                  "Add voucher code",
                  style: TextStyle(
                      color: Color(0xfff3f92bc),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Color(0xfffffd00a),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 250, top: 10),
                child: Text(
                  "Credits",
                  style: TextStyle(
                      color: Color(0xfff696969),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(FontAwesomeIcons.infoCircle),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 18,
                        ),
                        child: Text(
                          "Customer support",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Br,0.65",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                color: Color(0xfffffd00a),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240, top: 15),
                child: Text(
                  "Promotion",
                  style: TextStyle(
                      color: Color(0xfff696969),
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                        width: 40,
                        height: 20,
                        color: const Color(0xfff01B801),
                        child: const Icon(
                          FontAwesomeIcons.tag,
                          color: Colors.white,
                          size: 12,
                        )),
                  ),
                  title: const Text(
                    "Promotion",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500),
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
                padding: EdgeInsets.only(right: 220),
                child: Text(
                  "Add promo code",
                  style: TextStyle(
                      color: Color(0xfff3F92BC),
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ));
  }
}
