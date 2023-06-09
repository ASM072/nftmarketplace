

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/buttonwidget.dart';
import 'package:nftmarketplace/widgets/inputtextfieldwidget.dart';

class PaymentScreen extends StatelessWidget {

  PreferredSize buildAppBar() {
    return PreferredSize(
      preferredSize:  Size.fromHeight(70),
      child: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.plus,
            color: Colors.black,
            width: 40,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.delete,
            color: Colors.black,
            width: 25,
            )
          ),
        ], 
      ),
    );
  }

  Widget buildTextField({
     required double leftPadding,
     required double rightPadding,
     required String hintText,
  }) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
        top: 20,
        left: leftPadding,
        right: rightPadding,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.grey[100],
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics:  BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Order number is 1235462412",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
               Divider(),
              Container(
                height: 180,
                margin:  EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                width: double.infinity,
                padding:  EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient:  SweepGradient(
                      center: AlignmentDirectional(1, -1),
                      startAngle: 1.7,
                      endAngle: 3,
                      colors: <Color>[
                        Color(0xff148535),
                        Color(0xff148535),
                        Color(0xff0D6630),
                        Color(0xff0D6630),
                        Color(0xff148535),
                        Color(0xff148535),
                      ],
                      stops: <double>[
                        0.0,
                        0.3,
                        0.3,
                        0.7,
                        0.7,
                        1.0
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "VISA",
                          style: TextStyle(
                            fontSize: 24.30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "visa Electron",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                     Text(
                      "**** **** **** **** 1256",
                      style: TextStyle(
                        fontSize: 24.30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(
                                    "Card holder",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Aqeel Baloch",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(
                                    "Expries",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "2/21",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                             Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: CircleAvatar(
                                  backgroundColor:
                                      Colors.lightGreen[400],
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              InputTextField(
                hintText: "Card holder",
                obscureText: false,
              ),
              InputTextField(
                hintText: "Card number",
                obscureText: false,
              ),
              Row(
                children: [
                  Expanded(
                    child: buildTextField(
                      hintText: "Exp",
                      leftPadding: 20,
                      rightPadding: 0,
                    ),
                  ),
                  Expanded(
                    child: buildTextField(
                      hintText: "CVV",
                      leftPadding: 3,
                      rightPadding: 10,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      margin:  EdgeInsets.only(right: 20),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: Colors.orange[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ), disabledForegroundColor: Colors.grey.withOpacity(0.38), disabledBackgroundColor: Colors.grey.withOpacity(0.12),
                        ),
                        icon: SvgPicture.asset(
                          SvgImages.plus,
                          color: Colors.white,
                          width: 20,
                        ),
                        label:  Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
               SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.grey[300],
                title: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "Order amount",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Your total amount of discount",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      Text(
                        "\$103.98",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$-55.98",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.grey[400],
                width: double.infinity,
                margin:  EdgeInsets.symmetric(horizontal: 23),
                child: ButtonWidget(
                  color: Colors.deepPurple,
                  text: "Confirmation",
                  onPress: () {
                    
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
