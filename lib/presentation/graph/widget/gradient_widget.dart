import 'package:flutter/material.dart';
import 'package:ui_design/presentation/graph/widget/icon_theme_widget.dart';

class GradientWidget extends StatefulWidget {
  const GradientWidget({super.key});

  @override
  State<GradientWidget> createState() => _GradientWidgetState();
}

class _GradientWidgetState extends State<GradientWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _alignmentAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: true);

    _alignmentAnimation = Tween<Alignment>(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.02,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF1F1C2C), // Dark purple
                  const Color.fromARGB(255, 108, 105, 124), // Soft gray-purple
                ],
                begin: _alignmentAnimation.value,
                end: Alignment.bottomRight,
              ),
            ),
            child: child,
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Row(
            children: const [
              SizedBox(width: 10),
              IconThemewidget(
                icon: Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                  size: 40,
                ),
                text: 'Wallet',
              ),
              SizedBox(width: 30),
              IconThemewidget(
                icon: Icon(Icons.sync_alt, color: Colors.white, size: 40),
                text: 'Swap',
              ),
              SizedBox(width: 30),
              IconThemewidget(
                icon: Icon(Icons.present_to_all, color: Colors.white, size: 40),
                text: 'Request',
              ),
              SizedBox(width: 30),
              IconThemewidget(
                icon: Icon(Icons.person, color: Colors.white, size: 40),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
