// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:ui_design/core/const.dart'; // Make sure `starbucks` is defined here
// import 'package:ui_design/presentation/transactions/widget/appbar.dart';
// import 'package:ui_design/presentation/transactions/widget/card_widget.dart';
// import 'package:ui_design/presentation/transactions/widget/two_button_widget.dart';
// import 'package:ui_design/widgets/pie_chart.dart'; // Assumes a working PieChartWidget

import 'package:flutter/material.dart';
import 'package:ui_design/presentation/transactions/widget/appbar.dart';
import 'package:ui_design/presentation/transactions/widget/card_widget.dart';
import 'package:ui_design/presentation/transactions/widget/two_button_widget.dart';
import 'package:ui_design/widgets/pie_chart.dart';

class ScreenTransaction extends StatelessWidget {
  ScreenTransaction({super.key});

  final _widgetList = [TwoButtonWidgets(), PieChartWidget(), CardWidgets()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(title: 'Analytics', icon: Icons.calendar_month),
      body: ListView.separated(
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(height: 10),
        itemCount: _widgetList.length,
        
      ),
      
    );
  }
}
