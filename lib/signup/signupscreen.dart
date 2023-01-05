import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/buttonwidget.dart';
import 'package:nftmarketplace/widgets/inputtextfieldwidget.dart';

class SignupScreen extends StatelessWidget {
  
  Widget topPart() {
        return Column(
          children: [
            Image.asset(
              "images/Logo.png",
              height: 150,
            ),
            InputTextField(
              hintText: "Full name",
              obscureText: false,
            ),
            InputTextField(
              hintText: "Email",
              obscureText: false,
            ),
            InputTextField(
              hintText: "Password",
              obscureText: true,
            ),
            InputTextField(
              hintText: "Confirm Password",
              obscureText: true,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: ButtonWidget(
                onPress: () {},
                color: Colors.deepPurple,
                text: "Create an account",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: "By sigining up you agress to our\n\t",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "NovaFlat",
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Terms\t",
                    style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: "NovaFlat",
                  fontSize: 16,
                ),
                  ),
                  TextSpan(
                    text: "and\t",
                    style: TextStyle(
                  fontFamily: "NovaFlat",
                  fontSize: 16,
                ),
                  ),
                  TextSpan(
                    text: "Conditions of Use",
                    style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: "NovaFlat",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
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