part of candlestick_chart;

class CandleStickChartData {
  final DateTime dateTime;
  final double high, low, open, close;

  CandleStickChartData({
    this.dateTime,
    this.high,
    this.low,
    this.open,
    this.close,
  });
}
