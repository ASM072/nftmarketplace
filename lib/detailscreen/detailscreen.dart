
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nftmarketplace/data/homepagedata.dart';
import 'package:nftmarketplace/svgimages/svg_images.dart';
import 'package:nftmarketplace/widgets/dropdownbuttonwidget.dart';

class DetailScreen extends StatefulWidget {
  final SinglenftModel data;

  DetailScreen({
    required this.data,
    required,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.deepPurple,
    elevation: 0,
    centerTitle: true,
    title: Text(
      "Detailscreen",
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          SvgImages.heart,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(SvgImages.upload),
        onPressed: () {},
      ),
    ],
  );
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                "images/NFT1.png",
                ),
            ),
            title: Column(
              children: [
                Text(
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    widget.data.nftName),
                SizedBox(
                  height: 5,
                ),
                Text(widget.data.nftChain,
                    style: TextStyle(
                      color: Colors.purple[200],
                      fontSize: 18,
                    )),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.nftPrice.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    widget.data.nftImage,
                    fit: BoxFit.cover,
                    height: 300,
                    width: 300,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonWidget(
                        hintText: "Editions", 
                        item: [
                          "1",
                          "2",
                          "3",
                          "4",
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: MaterialButton(
              elevation: 0,
              height: 50,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              onPressed: () {  },
              child: Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600, 
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
