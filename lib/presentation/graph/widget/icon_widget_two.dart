import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconWidgetTwo extends StatefulWidget {
  const IconWidgetTwo({super.key, required this.icon, required this.text});

  final Icon icon;
  final String text;

  @override
  State<IconWidgetTwo> createState() => _IconWidgetTwoState();
}

class _IconWidgetTwoState extends State<IconWidgetTwo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<Alignment> _alignmentAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _alignmentAnimation = Tween<Alignment>(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(_controller);
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
            width: 200,
            height: 160,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 66, 44, 51),
                  const Color.fromARGB(255, 89, 53, 187),
                ],
                begin: _alignmentAnimation.value,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.deepPurpleAccent.withOpacity(0.1),
                  offset: Offset(0, 6),
                  blurRadius: 12,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: child,
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Glow circle
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                ),
                Icon(widget.icon.icon, size: 40, color: Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Text(
              widget.text,
              style: GoogleFonts.comicNeue(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
