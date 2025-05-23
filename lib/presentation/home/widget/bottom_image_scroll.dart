import 'package:flutter/material.dart';
import 'package:ui_design/core/image_urls.dart';

class BottomImageScroll extends StatelessWidget {
  const BottomImageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Row(
          children: [
            // Add Icon Container
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Icon(Icons.add, color: Colors.white, size: 30),
              ),
            ),

            // Image containers from URL list
            ...trfImgeList.map(
              (url) => Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(url),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
