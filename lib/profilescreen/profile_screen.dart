// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftmarketplace/loginscreen/loginscreen.dart';
import 'package:nftmarketplace/routes/pagerouter.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/buttonwidget.dart';

class ProfileScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.70,
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(
        "Account",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.edit,
            color: Colors.black,
            width: 25,
          ),
        )
      ],
      shadowColor: Colors.grey[300],
    );
  }

  Widget buildlistTileWidget(
      {required String leading, required String trailing}) {
    return ListTile(
      tileColor: Colors.white,
      leading: Text(
        leading,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildBottomListTile(
      {required String leading, required String trailing}) {
    return ListTile(
      onTap: () {},
      tileColor: Colors.white,
      leading: Text(
        leading,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Wrap(
        spacing: 5,
        children: [
          Text(
            trailing,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          NetworkImage("assets/images/ProfileImage.png"),
                    ),
                  ),
                  Text(
                    "Ahmed Saad Malik",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "TMUC - HerdFordShire",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            color: Colors.white,
            child: Column(
              children: [
                buildlistTileWidget(
                    leading: "Full name", trailing: "Ahmed Saad Malik"),
                Divider(),
                buildlistTileWidget(
                  leading: "Email",
                  trailing: "ahmedsaadmalik8@gmail.com",
                ),
                Divider(),
                buildlistTileWidget(
                  leading: "Address",
                  trailing: "123123",
                ),
                Divider(),
                buildlistTileWidget(
                  leading: "Payment",
                  trailing: "6011\t****\t****\t1117",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.white,
            child: Column(
              children: [
                buildBottomListTile(
                  leading: "Wish-list",
                  trailing: "5",
                ),
                Divider(),
                buildBottomListTile(
                  leading: "My bag",
                  trailing: "3",
                ),
                Divider(),
                buildBottomListTile(
                  leading: "My orders",
                  trailing: "1 in transit",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: ButtonWidget(
              color: Colors.deepPurple,
              onPress: () {
                PageRouting.goToNextPage(
                  context: context,
                  navigateTo: LoginScreen(),
                );
              },
              text: "Log out",
            ),
          ),
        ],
      ),
    );
  }
}
