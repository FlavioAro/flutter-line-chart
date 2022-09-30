import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:line_chart/src/data/data.dart';

class MyLineChart extends StatelessWidget {
  final List<ChartData> points;
  const MyLineChart(this.points, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LineChart(LineChartData(lineBarsData: [
        LineChartBarData(
            barWidth: 4,
            color: Colors.white,
            spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
            isCurved: true,
            dotData: FlDotData(show: true)),
      ])),
    );
  }
}
