// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nftmarketplace/detailscreen/detailscreen.dart';
import 'package:nftmarketplace/homepage/hompagescreen.dart';
import 'package:nftmarketplace/loginscreen/loginscreen.dart';

void main(){
  runApp(MyApp());
}
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NFTMARKETPLACE',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(
          color: Colors.black,
        )),
        primarySwatch: Colors.blue,
      ),
      // home: PaymentScreen(),
      home: HomePage(),
    );
  }
}
