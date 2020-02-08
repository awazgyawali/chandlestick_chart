part of candlestick_chart;

class CandleStickChart extends StatelessWidget {
  final Size size;
  final List<CandleStickChartData> chartData;

  const CandleStickChart({
    Key key,
    @required this.chartData,
    this.size = const Size(300, 300),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Container(
        color: Colors.blue.withOpacity(.3),
        child: CustomPaint(
          size: size,
          painter: CandleStickPainter(chartData),
        ),
      ),
    );
  }
}
