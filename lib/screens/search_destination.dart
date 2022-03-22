import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yoya_app/screens/cab.dart';

class SearchDestinationPage extends StatelessWidget {
  const SearchDestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      height: 648,
                      child: Image.asset(
                        "assets/images/destinationimage.png",
                        fit: BoxFit.cover,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 20),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Color(0xfffFFD00A),
                        size: 15,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        color: Colors.transparent,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CabPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfffFFD00A),
                ),
                child: const Center(
                    child: Text(
                  "Search destination",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
