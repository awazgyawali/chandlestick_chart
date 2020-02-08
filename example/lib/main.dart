import 'package:candlestick_chart/candlestick_chart.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<CandleStickChartData> _chartData = [
    for (int i = 0; i < 100; i++)
      CandleStickChartData(
        high: 100,
        low: 10,
        open: 100,
        close: 100,
      )
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Candlestick Chart Sample"),
      ),
      body: CandleStickChart(
        size: Size(size.width, size.width),
        chartData: _chartData,
      ),
    );
  }
}
