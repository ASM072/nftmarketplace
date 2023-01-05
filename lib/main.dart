import 'package:flutter/material.dart';
//import 'package:nftmarketplace/homepage/hompagescreen.dart';
//import 'package:nftmarketplace/login/loginscreen.dart';
import 'package:nftmarketplace/signup/signupscreen.dart';

void main()  {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(
            color: Colors.black,
          )),
          
          primarySwatch: Colors.blue,
        ),
        // home: PaymentScreen(),
        home: SignupScreen(),
    );
  }
}
