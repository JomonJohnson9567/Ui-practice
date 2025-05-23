import 'package:flutter/material.dart';
import 'package:ui_design/presentation/graph/widget/appbar_widget.dart';
import 'package:ui_design/presentation/graph/widget/container_widget.dart';
import 'package:ui_design/presentation/graph/widget/gradient_widget.dart';
import 'package:ui_design/presentation/graph/widget/icon_container_widget.dart';
import 'package:ui_design/presentation/graph/widget/text_widget.dart';
import 'package:ui_design/presentation/graph/widget/transaction_tiles.dart';

class ScreenGraph extends StatelessWidget {
  ScreenGraph({super.key});
  final _widgetList = [
    ContainerWidget(),
    GradientWidget(),
    IconContainerWidget(),
    TextWidget(),
    TransactionTile(
      amount: '590',
      status: 'Success',
      timeAndDate: 'Friday',
      title: 'Le Meridien',
    ),
    TransactionTile(
      amount: '554',
      status: 'Success',
      timeAndDate: 'Friday',
      title: 'Checkout',
    ),
    TransactionTile(
      amount: '1456',
      status: 'Success',
      timeAndDate: 'Friday',
      title: 'Lulu Hypermarket',
    ),
    TransactionTile(
      amount: '453',
      status: 'Failed',
      timeAndDate: 'Friday',
      title: 'Paragon Hotel',
    ),
    TransactionTile(
      amount: '112',
      status: 'Success',
      timeAndDate: 'Friday',
      title: 'Milk Shop',
    ),
    TransactionTile(
      amount: '1765',
      status: 'Failed',
      timeAndDate: 'Friday',
      title: 'Bar',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBarWidget(),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(height: 20),
        itemCount: _widgetList.length,
      ),
    );
  }
}
