// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SinglenftWidget extends StatefulWidget {
  final String nftImage;
  final String nftName;
  final String nftChain;
  final double nftPrice;
  final double nftLaunchPrice;
  final VoidCallback? onPressed;
  SinglenftWidget({ 
     required this.nftImage,
     required this.nftName,
     required this.nftChain,
     required this.nftPrice,
     required this.nftLaunchPrice,
     this.onPressed,
  });

  @override
  _SinglenftWidgetState createState() => _SinglenftWidgetState();
}

class _SinglenftWidgetState extends State<SinglenftWidget> {
  bool isFave = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 250,
        margin:  EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topRight,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      widget.nftImage,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.nftName,
                    overflow: TextOverflow.ellipsis,
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.nftChain,
                    overflow: TextOverflow.ellipsis,
                    style:  TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ ${widget.nftPrice}",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(fontWeight: FontWeight.bold),
                      ),
                       SizedBox(
                        width: 15,
                      ),
                      Text(
                        "\$ ${widget.nftLaunchPrice}",
                        overflow: TextOverflow.ellipsis,
                        style:  TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
