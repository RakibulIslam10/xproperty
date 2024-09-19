import 'package:flutter/cupertino.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    //main 350 && 16
    path_0.moveTo(360, 16.263);
    path_0.lineTo(100.856, 107.674);
    path_0.lineTo(360, 107.674);
    path_0.lineTo(360, 13.157);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff393060).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
    Path path_1 = Path();

    path_1.moveTo(275.549, 27.884);
    path_1.lineTo(37.18199999999999, 112.734);
    path_1.lineTo(246.623, 112.734);
    path_1.lineTo(274.549, 27.884);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff886aff).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    //main 60
    path_2.moveTo(0, 0);

    //main 200
    path_2.lineTo(180.646, 100.831);
    path_2.lineTo(0, 120.831);
    path_2.lineTo(0, 0);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff6946ff).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
