part of candlestick_chart;

class CandleStickPainter extends CustomPainter {
  List<CandleStickChartData> datas = [];
  double candleWidth;
  int upperBound, lowerBound;

  Size _size;
  CandleStickPainter({
    this.datas,
    this.upperBound,
    this.lowerBound,
    this.candleWidth,
  });

  double getTopForValue(double value) {
    return (1 - ((value - lowerBound) / range)) * _size.height;
  }

  int get range => upperBound - lowerBound;

  @override
  void paint(Canvas canvas, Size size) {
    _size = size;
    _drawVerticleGrid(canvas);
    _drawSticks(canvas);
  }

  void _drawVerticleGrid(Canvas canvas) {
    //TODO: Draw vertical Grid
  }

  void _drawSticks(Canvas canvas) {
    for (var i = 0; i < datas.length; i++) {
      CandleStickChartData data = datas[i];
      canvas.drawRect(
        Rect.fromLTWH(
          i * candleWidth,
          getTopForValue(data.open),
          candleWidth,
          (data.openCloseDifference / range) * _size.height,
        ),
        redPaint,
      );
    }
  }

  Paint get redPaint {
    return Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill;
  }

  @override
  bool shouldRepaint(CandleStickPainter oldDelegate) {
    return datas != oldDelegate.datas;
  }
}
