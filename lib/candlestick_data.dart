part of candlestick_chart;

class CandleStickChartData {
  final DateTime dateTime;
  final double high, low, open, close;

  CandleStickChartData({
    @required this.dateTime,
    @required this.high,
    @required this.low,
    @required this.open,
    @required this.close,
  }) {
    assert(high >= low);
    assert(open >= low && open <= high);
    assert(close >= low && close <= high);
  }

  double get highLowDifference => high - low;
  double get openCloseDifference => (open - close).abs();
}
