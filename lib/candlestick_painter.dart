part of candlestick_chart;

class CandleStickPainter extends CustomPainter {
  List<CandleStickChartData> _datas = [];
  CandleStickPainter(this._datas);

  double candleWidth = 5;

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < _datas.length; i++) {
      CandleStickChartData data = _datas[i];
      canvas.drawRect(
        Rect.fromLTWH(i * candleWidth, 0, candleWidth, data.high - data.low),
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
    return _datas != oldDelegate._datas;
  }
}
