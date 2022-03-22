import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoya_app/screens/homepage.dart';
import 'package:yoya_app/screens/landingscreen.dart';
import 'package:yoya_app/screens/loginpage.dart';
import 'package:yoya_app/screens/splashscreen.dart';

void main()  {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       theme: ThemeData.light().copyWith(
         textTheme: GoogleFonts.robotoTextTheme(
           Theme.of(context).textTheme,
         )
       ),
       debugShowCheckedModeBanner: false,
       home: const SplashScreen(),
       title: "Yoya",
       routes: {
         "landingscreen": (context) => const LandingScreen(),
         "login":(context) => const LoginPage(),
        //  "otp":(context) => const OtpPage(),
         "home":(context) => const HomePage(),
       },
    );
  }
}