// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SinglenftWidget extends StatefulWidget {
  final String nftImage;
  final String nftName;
  final String nftModel;
  final double nftPrice;
  final double nftOldPrice;
  final VoidCallback onPressed;
  SinglenftWidget({ 
     required this.nftImage,
     required this.nftName,
     required this.nftModel,
     required this.nftPrice,
     required this.nftOldPrice,
     required this.onPressed,
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
        margin: const EdgeInsets.all(10.0),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.nftName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.nftModel,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$ ${widget.nftPrice}",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "\$ ${widget.nftOldPrice}",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
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
