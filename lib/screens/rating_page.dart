import 'package:flutter/material.dart';
import 'package:yoya_app/utils/colors.dart';

class Ratingpage extends StatelessWidget {
  const Ratingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        title: Text(
          "Your Rating",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto"),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Understanding your rating",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto")),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text(
                  "It is a long established fact that a reader will be distracted by\nthe readable content of a page when looking at its layout. The\npoint of using Lorem Ipsum is that it has a more-or-less\nnormal distribution of letters, as opposed to using 'Content\ninfancy.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
              Center(child: Image.asset("assets/images/rating_image1.png",fit:BoxFit.cover,)),
              Divider(color:themeColor,),
               Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("How your rating is calculated",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto")),
              ),
             Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nis that it has a more-or-less normal distribution\nof sites still when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less\nnormal distribution of in their infancy.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
                Padding(
                padding: const EdgeInsets.only(left:20,top:25),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nis that it has a more-or-less normal distribution\nof sites still when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less\nnormal distribution of in their infancy.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
                Center(child: Image.asset("assets/images/rating_car_image.png",fit:BoxFit.cover,)),
                  Divider(color:themeColor,),
                 Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Short wait times.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto")),
              ), 
                 Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nis that it has a more-or-less normal distribution\nof sites still when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less\nnormal distribution of in their infancy.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
                 Center(child: Image.asset("assets/images/rating_handshak_image.png",fit:BoxFit.cover,)),
              Divider(color:themeColor,),
                 Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Courtesy.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto")),
              ), 
                 Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nis that it has a more-or-less normal distribution\nof sites still when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less\nnormal distribution of in their infancy.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
                 Center(child: Image.asset("assets/images/rating_user_image.png",fit:BoxFit.fitWidth,)),
              Divider(color:themeColor,),
                Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Safety...",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto")),
              ), 
                Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nis that it has a more-or-less normal distribution\nof sites still when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less\nnormal distribution of in their infancy.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),
                Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Why your rating matters",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize:16,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto")),
              ), 
               Padding(
                padding: const EdgeInsets.only(left:20,top:15),
                child: Text(
                  "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout. The point of using Lorem Ipsum\nis that it has a more-or-less normal distribution\nof sites still when looking at its layout. The point of\nusing Lorem Ipsum is that it has a more-or-less\nnormal distribution of in their infancy.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto"),
                ),
              ),    
            ],
          ),
        ],
      ),
    );
  }
}
