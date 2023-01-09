import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_routing_flow/shared/konstants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.size,
    this.textColor = Colors.white,
    this.elementColor = Colors.white,
  }) : super(key: key);

  final double size;
  final Color textColor;
  final Color elementColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: size,
      height: size,
      child: CustomPaint(
        painter: CirclePainter(elementColor),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Icon(
                  FontAwesomeIcons.bookOpen,
                  color: elementColor,
                ),
              ),
              FittedBox(
                child: Text(
                  'NIT Learning!',
                  style: kHeadingTextStyle.copyWith(
                    color: textColor,
                    fontFamily: GoogleFonts.moonDance().fontFamily,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// Draws a circle if placed into a square widget.
/// https://stackoverflow.com/a/61246388/1321917
class CirclePainter extends CustomPainter {
  final Color color;
  CirclePainter(this.color);
  final _paint = Paint()
    ..strokeWidth = 2
    // Use [PaintingStyle.fill] if you want the circle to be filled.
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    _paint.color = color;
    canvas.drawOval(
      Rect.fromLTWH(0, 0, size.width, size.height),
      _paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
