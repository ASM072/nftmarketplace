// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nftmarketplace/data/categorydata.dart';
import 'package:nftmarketplace/data/homepagedata.dart';
import 'package:nftmarketplace/widgets/categorynftwidget.dart';

class CategoryTabBar extends StatelessWidget {
  List<HomePageTabBarnftModel> categorynftModel = [];
  CategoryTabBar({
    required this.categorynftModel,
  });

  @override
  Widget build(BuildContext context) {
     late HomePageTabBarnftModel data;
    
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categorynftModel.length,
      physics:  BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        data = categorynftModel[index];
        return CategorynftWidget(
          onPressed: () {
          },
          nftImage: data.nftImage,
          nftModel: "${topData.length}\t${data.nftChain}",
          nftName: data.nftName,
        );
      },
    );
  }
}
