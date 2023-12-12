import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LottryCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //basic parameters of canvas
    final width = size.width;
    final height = size.height;
    final radius = min(height, width);
    final centreOffset = Offset(height, width) / 2;
    final baseRadius = radius * 0.15;
    final radiusForLargeCircle = radius * 1.05;
    final tickLength = radius * 0.35;
    final tickLengthOne = radius * 0.3;
    final radiusOne = min(height, width);
    double degToRadian(double deg) => pi / 180 * deg;
    //paints of canvas

    final centrePaint = Paint()..color = Colors.white;
    final largeCirclepaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5;
    final linesPaint = Paint()
      ..color = Colors.blueGrey
      ..strokeWidth = 3;
    final circlePaint = Paint()..color = Colors.amber;
    final rectPaintOne = Paint()..color = Colors.red;
    final rectPaintTwo = Paint()..color = Colors.yellow;

//  canvas shapes and their paints...
    canvas.drawCircle(centreOffset, radiusForLargeCircle, largeCirclepaint);
    canvas.drawCircle(centreOffset, radius, circlePaint);
    canvas.drawCircle(centreOffset, baseRadius, centrePaint);
    canvas.drawLine(Offset(110, centreOffset.dy + 225),
        Offset(110, -tickLength-40), linesPaint);
    canvas.drawLine(Offset(centreOffset.dx + 225, 110),
        Offset(-tickLength - 40, 110), linesPaint);
    canvas.drawLine(Offset(centreOffset.dx, centreOffset.dy),
        Offset(-tickLengthOne, -30), linesPaint);
    canvas.drawLine(Offset(centreOffset.dx, centreOffset.dy),
        Offset(-60, radius+30 ), linesPaint);
    canvas.drawLine(Offset(centreOffset.dx, centreOffset.dy),
        Offset(250, radius + 60), linesPaint);
    canvas.drawLine(Offset(centreOffset.dx, centreOffset.dy),
        Offset(270, -radiusOne + 170), linesPaint);
    
    //canvas text on the canvas 
    TextPainter textPainterOne=TextPainter();
    textPainterOne.textDirection=TextDirection.ltr;
    textPainterOne.textAlign=TextAlign.end;
    textPainterOne.text=const TextSpan(
      text: 'Car',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterOne.layout();
    textPainterOne.paint(canvas, Offset(centreOffset.dx-190,centreOffset.dy+35));

     TextPainter textPainterTwo=TextPainter();
    textPainterTwo.textDirection=TextDirection.ltr;
    textPainterTwo.textAlign=TextAlign.end;
    textPainterTwo.text=const TextSpan(
      text: 'Tablet',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterTwo.layout();
    textPainterTwo.paint(canvas, Offset(centreOffset.dx-120,centreOffset.dy+120));

     TextPainter textPainterThree=TextPainter();
    textPainterThree.textDirection=TextDirection.ltr;
    textPainterThree.textAlign=TextAlign.end;
    textPainterThree.text=const TextSpan(
      text: 'Prize',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterThree.layout();
    textPainterThree.paint(canvas, Offset(centreOffset.dx+20,centreOffset.dy+120));

    TextPainter textPainterfour=TextPainter();
    textPainterfour.textDirection=TextDirection.ltr;
    textPainterfour.textAlign=TextAlign.end;
    textPainterfour.text=const TextSpan(
      text: 'Mobile',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterfour.layout();
    textPainterfour.paint(canvas, Offset(centreOffset.dx+100,centreOffset.dy+40));

    TextPainter textPainterfive=TextPainter();
    textPainterfive.textDirection=TextDirection.ltr;
    textPainterfive.textAlign=TextAlign.end;
    textPainterfive.text=const TextSpan(
      text: 'Cash Prize',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterfive.layout();
    textPainterfive.paint(canvas, Offset(centreOffset.dx+60,centreOffset.dy-60));

     TextPainter textPaintersix=TextPainter();
    textPaintersix.textDirection=TextDirection.ltr;
    textPaintersix.textAlign=TextAlign.end;
    textPaintersix.text=const TextSpan(
      text: 'Camera',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPaintersix.layout();
    textPaintersix.paint(canvas, Offset(centreOffset.dx+10,centreOffset.dy-180));

     TextPainter textPainterseven=TextPainter();
    textPainterseven.textDirection=TextDirection.ltr;
    textPainterseven.textAlign=TextAlign.end;
    textPainterseven.text=const TextSpan(
      text: 'TV',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterseven.layout();
    textPainterseven.paint(canvas, Offset(centreOffset.dx-100,centreOffset.dy-180));

     TextPainter textPainterEight=TextPainter();
    textPainterEight.textDirection=TextDirection.ltr;
    textPainterEight.textAlign=TextAlign.end;
    textPainterEight.text=const TextSpan(
      text: 'Surprize',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold)
    );
    textPainterEight.layout();
    textPainterEight.paint(canvas, Offset(centreOffset.dx-200,centreOffset.dy-70));
  }

  @override
  bool shouldRepaint(LottryCustomPaint oldDelegate) => true;
  @override
  bool shouldRebuildSemantics(LottryCustomPaint oldDelegate) => true;
}
