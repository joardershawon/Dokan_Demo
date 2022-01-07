import 'package:flutter/material.dart';

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 10); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(
      Offset(size.width * 0.60, 10),
      radius: const Radius.circular(10.0),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 10);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 10);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.24533333333333332).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5889067, size.height * 0.4485217);
    path_0.cubicTo(size.width * 0.5845227, size.height * 0.6299696, size.width * 0.5468747, size.height * 0.7717391,
        size.width * 0.5010800, size.height * 0.7717391);
    path_0.cubicTo(size.width * 0.4566960, size.height * 0.7717391, size.width * 0.4199653, size.height * 0.6385826,
        size.width * 0.4137520, size.height * 0.4652011);
    path_0.cubicTo(size.width * 0.4124080, size.height * 0.4452565, size.width * 0.4010613, size.height * 0.2952380,
        size.width * 0.3621147, size.height * 0.2676674);
    path_0.lineTo(size.width * 0.02777787, size.height * 0.2676674);
    path_0.cubicTo(
        size.width * 0.01243653, size.height * 0.2676674, 0, size.height * 0.3183598, 0, size.height * 0.3808913);
    path_0.lineTo(0, size.height * 0.9809826);
    path_0.lineTo(size.width, size.height * 0.9809826);
    path_0.lineTo(size.width, size.height * 0.3808913);
    path_0.cubicTo(size.width, size.height * 0.3183598, size.width * 0.9875627, size.height * 0.2676674,
        size.width * 0.9722213, size.height * 0.2676674);
    path_0.lineTo(size.width * 0.6378213, size.height * 0.2676674);
    path_0.cubicTo(size.width * 0.6033200, size.height * 0.2927402, size.width * 0.5914747, size.height * 0.4158043,
        size.width * 0.5889067, size.height * 0.4485217);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
