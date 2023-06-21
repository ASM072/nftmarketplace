// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:nftmarketplace/loginscreen/loginscreen.dart';
import 'package:nftmarketplace/routes/pagerouter.dart';
import 'package:nftmarketplace/yourcart/yourcart.dart';

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
      home: LoginScreen(),
      routes: {
        MyRoutes.cartRoute: (context) => YourCart(),
      },
    );
  }
}
