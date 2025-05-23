
import 'package:flutter/material.dart';
import 'package:ui_design/presentation/graph/widget/icon_widget_two.dart';

class IconContainerWidget extends StatelessWidget {
  const IconContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // family Icon
            Expanded(
              child: IconWidgetTwo(
                icon: Icon(
                  Icons.groups_2,
                  color: Colors.white,
                  size: 80,
                ),
                text: 'Family',
                
              ),
            ),
            const SizedBox(width: 20),
            //Wifi Icon
            Expanded(
              child: IconWidgetTwo(
                icon: Icon(Icons.wifi, color: Colors.white, size: 80),
                text: 'Internet',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        //education Icon
        Row(
          children: [
            Expanded(
              child: IconWidgetTwo(
                icon: Icon(
                  Icons.school,
                  color: Colors.white,
                  size: 70,
                ),
                text: 'Education',
              ),
            ),
            const SizedBox(width: 20),
            //entertainment Icon
            Expanded(
              child: IconWidgetTwo(
                icon: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 70,
                ),
                text: 'Entertainment',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
