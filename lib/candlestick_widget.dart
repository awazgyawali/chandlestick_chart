part of candlestick_chart;

class CandleStickChart extends StatefulWidget {
  final Size size;
  final List<CandleStickChartData> chartData;

  const CandleStickChart({
    Key key,
    @required this.chartData,
    this.size = const Size(300, 300),
  }) : super(key: key);

  @override
  _CandleStickChartState createState() => _CandleStickChartState();
}

class _CandleStickChartState extends State<CandleStickChart> {
  List<CandleStickChartData> chartData;
  double _lowestValue = double.infinity,
      _highestValue = 0,
      _candleWidth = 20,
      paddingPercentage = .1;

  @override
  void initState() {
    super.initState();
    setChartData(widget.chartData);
  }

  @override
  void didUpdateWidget(CandleStickChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.chartData != widget.chartData) setChartData(widget.chartData);
  }

  setChartData(List<CandleStickChartData> data) {
    setState(() {
      chartData = widget.chartData;
      for (var item in chartData) {
        if (item.high > _highestValue) _highestValue = item.high;
        if (item.low < _lowestValue) _lowestValue = item.low;
      }
      _highestValue = _highestValue * (1 + paddingPercentage);
      _lowestValue = _lowestValue * (1 - paddingPercentage);
    });
  }

  Size get size {
    return Size(_candleWidth * chartData.length, widget.size.height);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(.3),
      child: SizedBox(
        height: widget.size.height,
        width: widget.size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: CustomPaint(
            size: size,
            painter: CandleStickPainter(
              datas: widget.chartData,
              upperBound: 410,
              lowerBound: 350,
              candleWidth: _candleWidth,
            ),
          ),
        ),
      ),
    );
  }
}
