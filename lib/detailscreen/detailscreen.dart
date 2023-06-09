import 'package:flutter/material.dart';
import 'package:nftmarketplace/data/homepagedata.dart';

class DetailScreen extends StatefulWidget {
  final SinglenftModel data;
  DetailScreen({required this.data});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

AppBar buildAppBar() {
  return AppBar();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }
}
