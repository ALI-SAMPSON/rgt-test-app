import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/src/constants/app.colors.dart';
import 'package:flutter_test_app/src/constants/app.sizes.dart';
import 'package:flutter_test_app/src/features/home/domain/appointment.model.dart';

class PieChartItem extends StatefulWidget {
  final Widget? title;
  final List<Appointment> chartData;
  final double centerSpaceRadius;
  final int numOfSections;
  const PieChartItem({
    super.key,
    required this.title,
    required this.centerSpaceRadius,
    required this.numOfSections,
    required this.chartData,
  });

  @override
  State<PieChartItem> createState() => _PieChartItemState();
}

class _PieChartItemState extends State<PieChartItem> {
  // list of yearly expenses
  // List<double> weeklySummary = [
  //   4.40,
  //   2.50,
  //   42.42,
  //   10.50,
  //   100.20,
  //   88.99,
  //   90.10,
  //   3.60,
  //   20.90,
  //   15.40,
  //   30.50,
  //   40.50,
  // ];

  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: TAppSize.s250,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              pieTouchData: PieTouchData(
                touchCallback: (event, pieTouchResponse) {
                  setState(() {
                    if (!event.isInterestedForInteractions ||
                        pieTouchResponse == null ||
                        pieTouchResponse.touchedSection == null) {
                      touchedIndex = -1;
                      return;
                    }
                    touchedIndex =
                        pieTouchResponse.touchedSection!.touchedSectionIndex;
                  });
                },
              ),
              borderData: FlBorderData(show: false),
              sectionsSpace: TAppSize.s2,
              centerSpaceRadius: widget.centerSpaceRadius,
              sections: showingSections(),
            ),
            swapAnimationDuration: const Duration(milliseconds: TAppSize.d500),
            swapAnimationCurve: Curves.decelerate,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: TAppSize.s14,
                ),
                child: widget.title),
          ),
        ],
      ),
      // child: MyBarGraph(
      //   weeklySummary: weeklySummary,
      // ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(widget.chartData.length, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 50.0 : 30.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      final value = 100 / widget.chartData.length;
      debugPrint('Pie Value: $value');
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: TAppColor.indigo,
            value: value,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: TAppColor.indigo,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: TAppColor.yellow,
            value: value,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: TAppColor.yellow,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: TAppColor.pink,
            value: value,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: TAppColor.pink,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: TAppColor.seablue,
            value: value,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: TAppColor.seablue,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: TAppColor.roseRed,
            value: value,
            title: '',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: TAppColor.roseRed,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
