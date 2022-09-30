import 'package:collection/collection.dart';

class ChartData {
  final double x;
  final double y;
  ChartData({required this.x, required this.y});
}

List<ChartData> get chartData {
  final data = <double>[10, 30, 23, 41, 581, 100];
  return data
      .mapIndexed(
          ((index, element) => ChartData(x: index.toDouble(), y: element)))
      .toList();
}
