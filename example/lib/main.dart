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
  final data = [
    {
      "businessDate": "2020-01-05",
      "openPrice": 360.0,
      "highPrice": 364.0,
      "lowPrice": 360.0,
      "previousDayClosePrice": 359.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 363.0
    },
    {
      "businessDate": "2020-01-06",
      "openPrice": 365.0,
      "highPrice": 372.0,
      "lowPrice": 365.0,
      "previousDayClosePrice": 363.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 371.0
    },
    {
      "businessDate": "2020-01-07",
      "openPrice": 375.0,
      "highPrice": 376.0,
      "lowPrice": 370.0,
      "previousDayClosePrice": 371.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 373.0
    },
    {
      "businessDate": "2020-01-08",
      "openPrice": 372.0,
      "highPrice": 373.0,
      "lowPrice": 369.0,
      "previousDayClosePrice": 373.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 369.0
    },
    {
      "businessDate": "2020-01-09",
      "openPrice": 369.0,
      "highPrice": 369.0,
      "lowPrice": 363.0,
      "previousDayClosePrice": 369.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 365.0
    },
    {
      "businessDate": "2020-01-12",
      "openPrice": 371.0,
      "highPrice": 373.0,
      "lowPrice": 366.0,
      "previousDayClosePrice": 365.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 372.0
    },
    {
      "businessDate": "2020-01-13",
      "openPrice": 374.0,
      "highPrice": 382.0,
      "lowPrice": 374.0,
      "previousDayClosePrice": 372.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 379.0
    },
    {
      "businessDate": "2020-01-14",
      "openPrice": 375.0,
      "highPrice": 380.0,
      "lowPrice": 375.0,
      "previousDayClosePrice": 379.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 378.0
    },
    {
      "businessDate": "2020-01-15",
      "openPrice": 385.0,
      "highPrice": 386.0,
      "lowPrice": 378.0,
      "previousDayClosePrice": 378.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 386.0
    },
    {
      "businessDate": "2020-01-16",
      "openPrice": 389.0,
      "highPrice": 398.0,
      "lowPrice": 386.0,
      "previousDayClosePrice": 386.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 391.0
    },
    {
      "businessDate": "2020-01-19",
      "openPrice": 395.0,
      "highPrice": 398.0,
      "lowPrice": 392.0,
      "previousDayClosePrice": 391.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 396.0
    },
    {
      "businessDate": "2020-01-20",
      "openPrice": 402.0,
      "highPrice": 407.0,
      "lowPrice": 386.0,
      "previousDayClosePrice": 396.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 389.0
    },
    {
      "businessDate": "2020-01-21",
      "openPrice": 396.0,
      "highPrice": 397.0,
      "lowPrice": 385.0,
      "previousDayClosePrice": 389.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 389.0
    },
    {
      "businessDate": "2020-01-22",
      "openPrice": 395.0,
      "highPrice": 395.0,
      "lowPrice": 383.0,
      "previousDayClosePrice": 389.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 386.0
    },
    {
      "businessDate": "2020-01-23",
      "openPrice": 390.0,
      "highPrice": 390.0,
      "lowPrice": 380.0,
      "previousDayClosePrice": 386.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 382.0
    },
    {
      "businessDate": "2020-01-26",
      "openPrice": 379.0,
      "highPrice": 384.0,
      "lowPrice": 372.0,
      "previousDayClosePrice": 382.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 372.0
    },
    {
      "businessDate": "2020-01-27",
      "openPrice": 368.0,
      "highPrice": 387.0,
      "lowPrice": 368.0,
      "previousDayClosePrice": 372.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 387.0
    },
    {
      "businessDate": "2020-01-28",
      "openPrice": 387.0,
      "highPrice": 389.0,
      "lowPrice": 380.0,
      "previousDayClosePrice": 387.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 386.0
    },
    {
      "businessDate": "2020-01-29",
      "openPrice": 380.0,
      "highPrice": 387.0,
      "lowPrice": 379.0,
      "previousDayClosePrice": 386.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 384.0
    },
    {
      "businessDate": "2020-01-30",
      "openPrice": 385.0,
      "highPrice": 388.0,
      "lowPrice": 383.0,
      "previousDayClosePrice": 384.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 384.0
    },
    {
      "businessDate": "2020-02-02",
      "openPrice": 384.0,
      "highPrice": 392.0,
      "lowPrice": 383.0,
      "previousDayClosePrice": 384.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 390.0
    },
    {
      "businessDate": "2020-02-03",
      "openPrice": 391.0,
      "highPrice": 395.0,
      "lowPrice": 388.0,
      "previousDayClosePrice": 390.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 388.0
    },
    {
      "businessDate": "2020-02-04",
      "openPrice": 392.0,
      "highPrice": 396.0,
      "lowPrice": 385.0,
      "previousDayClosePrice": 388.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 386.0
    },
    {
      "businessDate": "2020-02-05",
      "openPrice": 390.0,
      "highPrice": 390.0,
      "lowPrice": 382.0,
      "previousDayClosePrice": 386.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 385.0
    },
    {
      "businessDate": "2020-02-06",
      "openPrice": 383.0,
      "highPrice": 390.0,
      "lowPrice": 382.0,
      "previousDayClosePrice": 385.0,
      "fiftyTwoWeekHigh": 451.0,
      "lastTradedPrice": 385.0
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Candlestick Chart Sample"),
      ),
      body: CandleStickChart(
        size: Size(size.width, 300),
        chartData: data
            .map(
              (d) => CandleStickChartData(
                open: d["openPrice"],
                high: d["highPrice"],
                low: d["lowPrice"],
                close: d["lastTradedPrice"],
                dateTime: DateTime.parse(d["businessDate"]),
              ),
            )
            .toList(),
      ),
    );
  }
}
