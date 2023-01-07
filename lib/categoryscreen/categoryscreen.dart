import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftmarketplace/categoryscreen/categoryscreentabbar.dart';
import 'package:nftmarketplace/data/categorydata.dart';
import 'package:nftmarketplace/data/homepagedata.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/singlenftwidget.dart';

class CategoryScreen extends StatefulWidget {

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurple,
      elevation: 0,
      
      centerTitle: true,
      title:  Text(
        "NFT MARKETPLACE",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [              
        RotationTransition(
          turns:  AlwaysStoppedAnimation(90 / 360),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              SvgImages.filter,
              color: Colors.black,
              width: 35,
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.shoppingCart,
            color: Colors.black,
            width: 35,
          ),
          onPressed: () {},
        )
      ],
      bottom:  TabBar(
        
        indicator: BoxDecoration(
          
          color: Colors.transparent,
          ),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: Colors.black,
        labelColor: Colors.deepPurple[200],
        automaticIndicatorColorAdjustment: false,
        tabs: [
          Text("All"),
          Text("BSC"),
          Text("Ethereum"),
          Text("Polygon"),
        ],
      ),
    );
  }

  Widget builderRender({ required List<SinglenftModel> singlenft}) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        itemCount: singlenft.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singlenft[index];
          return SinglenftWidget(
            onPressed: (){},

            nftImage: data.nftImage,
            nftChain: data.nftChain,
            nftName: data.nftName,
            nftLaunchPrice: data.nftLaunchPrice,
            nftPrice: data.nftPrice,
          );
        },
      ),
    );
  }

   Widget showAllText({required String leftText}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Show All",
            style: TextStyle(
              fontSize: 17,
              color: Colors.deepPurple,
            ),
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                showAllText(
                  leftText: "Top",
                ),
                builderRender(
                  singlenft: topData,
                ),
                showAllText(
                  leftText: "Arts",
                ),
                builderRender(
                  singlenft: topData,
                ),
                showAllText(
                  leftText: "Sports",
                ),
                builderRender(
                  singlenft: topData,
                ),              
              ],
            ),
            CategoryTabBar(
              categorynftModel: homePageTabBarBSCData,
            ),
            CategoryTabBar(
              categorynftModel: homePageTabBarETHData,
            ),
            CategoryTabBar(
              categorynftModel: homePageTabBarPolygonData,
            ),
            
          ],
        ),
      ),
    );
  }
}
