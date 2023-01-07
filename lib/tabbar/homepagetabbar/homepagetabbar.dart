import 'package:flutter/material.dart';
import 'package:nftmarketplace/data/homepagedata.dart';
import 'package:nftmarketplace/widgets/singlenftwidget.dart';



class HomePageTabBar extends StatelessWidget {
  final List<SinglenftModel> nftData;
  //final List<HomePageTabBarnftModel>? categorynftData;
  HomePageTabBar({required this.nftData,   /*this.categorynftData*/});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:  BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: nftData.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = nftData[index];
        return SinglenftWidget(
          onPressed: () {
          },
          nftImage: data.nftImage,
          nftChain: data.nftChain,
          nftName: data.nftName,
           nftLaunchPrice: data.nftLaunchPrice,
           nftPrice: data.nftPrice,
        );
      },
    );
  }
}
