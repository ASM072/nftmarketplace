import 'package:flutter/material.dart';

class MyRoutes {
  static String cartRoute = "/cart";
}

class PageRouting {
  static goToNextPage(
      {required BuildContext context, required Widget navigateTo}) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => navigateTo),
    );
  }
}
