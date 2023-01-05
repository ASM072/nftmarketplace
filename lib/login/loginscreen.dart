import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/buttonwidget.dart';
import 'package:nftmarketplace/widgets/inputtextfieldwidget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget topPart() {
    return Column(
      children: [
        Image.asset(
          "images/Logo.png",
          height: 150,
        ),
        Column(
          children: [
            InputTextField(
              hintText: "E-mail",
              obscureText: false,
            ),
            InputTextField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ButtonWidget(
                  text: "Sign in",
                  color: Colors.black,
                  onPress: () {},
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: ButtonWidget(
                  text: "Sign up",
                  color: Colors.deepPurple,
                  onPress: () {},
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Forgot password?",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  Widget socialButton({required Widget child, required VoidCallback onPressed}) {
    return MaterialButton(
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  Widget bottomPart({required BuildContext context}) {
    return SizedBox(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign in with social networks",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // facebook social button
                socialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: Colors.black,
                    width: 45,
                  ),
                ),

                // google social button
                socialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: Colors.black,
                    width: 45,
                  ),
                ),
                // twitter social button
                socialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: Colors.black,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              color: Colors.grey[400],
              height: 55,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  topPart(),
                  bottomPart(context: context),
                  Divider(),
                  Container(
                    height: 200,
                    margin: EdgeInsets.all(10.0),
                    color: Colors.deepPurple,
                    child: Column(
                    children: [
                      Text(
                      
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      
                      "Contact Us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),  
                    ]
                  ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
