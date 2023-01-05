// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nftmarketplace/homepage/homepagedata.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/singlenftwidget.dart';


class HomePage extends StatelessWidget {
// late final SinglenftModel singlenftModel;

  
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.black,
        labelColor: Colors.deepPurple,
        tabs: [
          Text("All"),
          Text("Domain Name"),
          Text("Collectibles"),
          ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "NFT MARKETPLACE",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Collecting NFT is also an ART",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
        ]
      ),
      actions: [
        IconButton(
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90 / 360),
            child: SvgPicture.asset(
              SvgImages.filter,
              color: Colors.black,
              width: 30,
            ),
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: Colors.black,
            width: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildAdBox() {
    return Container(
      height: 170,
      width: 170,
      margin: EdgeInsets.all(10.0),
        child: SizedBox(
          
        child: ImageSlideshow(
          indicatorColor: Colors.blue,
          onPageChanged: (value) {
            debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            Image.asset(
              'images/Nftspotlight1.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/Nftspotlight2.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/Nftspotlight1.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
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


  Widget trendingNFT({
    required String nftImage,
    required String nftName,
    required String nftModel,
    required double nftPrice,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.network(nftImage),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nftName,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    nftModel,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MaterialButton(
              color: Colors.deepPurple[300],
              elevation: 0,
              height: 45,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(0.7),
              ),
              onPressed: () {},
              child: Text(
                "\$ $nftPrice",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: TabBarView(
          children: [
            ListView(
              physics: BouncingScrollPhysics(),
              children: [
                showAllText(
                  leftText: "Spotlight"
                ),
                buildAdBox(),
                Divider(),
                showAllText(
                  leftText: "New",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singlenftData.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context, index) {
                      var arrivalDataStore = singlenftData[index];

                      return SinglenftWidget(
                        nftImage: arrivalDataStore.nftImage,
                        nftName: arrivalDataStore.nftName,
                        nftModel: arrivalDataStore.nftModel,
                        nftOldPrice: arrivalDataStore.nftOldPrice,
                        nftPrice: arrivalDataStore.nftPrice,
                        onPressed: () {},
                      );
                    },
                  ),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                showAllText(
                  leftText: "What\t's trending",
                ),
                trendingNFT(
                  nftImage:
                      'assets/images/NFT1.png',
                  nftModel: 'Ethereum',
                  nftName: 'Bored Ape 1',
                  nftPrice: 50,
                ),
                trendingNFT(
                  nftImage:
                      '/assets/images/NFT2.png',
                  nftModel: 'Binance Smart Chain',
                  nftName: 'Bored Ape 2',
                  nftPrice: 25,
                ),
                trendingNFT(
                  nftImage:
                      'assets/images/NFT4.png',
                  nftModel: 'Polkadot',
                  nftName: 'Bored Ape 3',
                  nftPrice: 10,
                ),
              ]
            ),
            // TabBarBar(
            //   nftData: colothsData,
            // ),
            // TabBarBar(
            //   nftData: shoesData,
            // ),
            // TabBarBar(
            //   nftData: accessoriesData,
            // ),
          ],
        ),
      ),
    );
  }
}