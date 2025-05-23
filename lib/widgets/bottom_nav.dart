import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ui_design/presentation/graph/screen_graph.dart';
import 'package:ui_design/presentation/home/screen_home.dart';
import 'package:ui_design/presentation/settings/screen_settings.dart';
import 'package:ui_design/presentation/transactions/transaction.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isBarVisible = false;

  final List<Widget> _pages = [
    ScreenHome(),
    ScreenGraph(),
    ScreenTransaction(),
    ScreenSettings(),
  ];
  // Position of the toggle button (initial vertical position)
  double _toggleButtonTop = 300;

  void _toggleBarVisibility() {
    setState(() {
      isBarVisible = !isBarVisible;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: _pages.length, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Main Tab content
          TabBarView(
            controller: tabController,
            physics: const BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: _pages,
          ),

          // Movable Toggle Button on right side
          Positioned(
            right: 0,
            top: _toggleButtonTop,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _toggleButtonTop += details.delta.dy;
                  // Keep the button within screen bounds
                  _toggleButtonTop = _toggleButtonTop.clamp(
                    0.0,
                    screenHeight - 50,
                  );
                });
              },
              onTap: _toggleBarVisibility,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 247, 246, 246),
                    width: 1,
                  ),
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 5),
                child: Icon(
                  isBarVisible ? Icons.chevron_right : Icons.grain,
                  color: const Color.fromARGB(255, 253, 252, 252),
                  size: 28,
                ),
              ),
            ),
          ),

          // Vertical Menu
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            right: isBarVisible ? 50 : -100,
            top: _toggleButtonTop - 95, // Aligns center of menu with button
            child: Column(
              children: [
                _buildNavIcon(Icons.home_outlined, 0),
                SizedBox(height: 12),
                _buildNavIcon(Icons.analytics_outlined, 1),
                SizedBox(height: 12),
                _buildNavIcon(Icons.compare_arrows_outlined, 2),
                SizedBox(height: 12),
                _buildNavIcon(Icons.settings_outlined, 3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabController.index = index;
          isBarVisible = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color:
              tabController.index == index
                  ? Colors.black
                  : const Color.fromARGB(255, 43, 39, 39),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Icon(
          icon,
          color: const Color.fromARGB(255, 255, 251, 251),
          size: 28,
        ),
      ),
    );
  }
}
