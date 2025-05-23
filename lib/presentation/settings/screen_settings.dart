// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ui_design/presentation/settings/widgets/container_widget_settings.dart';
import 'package:ui_design/presentation/settings/widgets/profile_widget.dart';
import 'package:ui_design/presentation/settings/widgets/toggle_container_widget.dart';
import 'package:ui_design/presentation/transactions/widget/appbar.dart';

class ScreenSettings extends StatelessWidget {
  ScreenSettings({super.key});
  final _widgetList = [
    ProfileWidget(),
    ToggleContainerWidget(title: 'Push Notifications'),
    ContainerWidget2(title: 'Language', subtext: 'English'),
    ToggleContainerWidget(title: 'Face ID'),
    ContainerWidget2(title: 'Change Password'),
    ContainerWidget2(title: 'Help Center'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: CustomAppBar(title: 'Profile', icon: Icons.border_color),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: ListView.separated(
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => SizedBox(height: 10),
          itemCount: _widgetList.length,
        ),
      ),
    );
  }
}


 