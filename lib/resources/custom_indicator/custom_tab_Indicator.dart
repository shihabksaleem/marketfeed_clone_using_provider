import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  final double radius;

  final Color color;

  final double indicatorHeight;

  const CustomTabIndicator({
    this.radius = 10,
    this.indicatorHeight = 6,
    this.color = const Color(0xFF4266c7),
  });

  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(
      this,
      onChanged,
      radius,
      color,
      indicatorHeight,
    );
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;
  final double radius;
  final Color color;
  final double indicatorHeight;

  _CustomPainter(
    this.decoration,
    VoidCallback? onChanged,
    this.radius,
    this.color,
    this.indicatorHeight,
  ) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final Paint paint = Paint();
    double xAxisPos = offset.dx + configuration.size!.width / 2;
    double yAxisPos =
        offset.dy + configuration.size!.height - indicatorHeight / 2;
    paint.color = color;

    RRect fullRect = RRect.fromRectAndCorners(
      Rect.fromCenter(
        center: Offset(xAxisPos, yAxisPos),
        width: configuration.size!.width / 1.7,
        height: indicatorHeight,
      ),
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    );

    canvas.drawRRect(fullRect, paint);
  }
}
