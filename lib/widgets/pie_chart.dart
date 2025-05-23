import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  static const List<Color> colorList = [
    Color(0xFFEA71B4), // Supermarkets
    Color(0xFF5AD1E2), // Translations
    Color(0xFF5F6EE2), // Fast Food
    Color(0xFFF4B04D), // Other
  ];
  static const Map<String, double> dataMap = {
    "Supermarkets": 30,
    "Translations": 25,
    "Fast Food": 15,
    "Other": 30,
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(milliseconds: 800),
                chartRadius: 220,
                colorList: colorList,
                initialAngleInDegree: 90,
                chartType: ChartType.ring,
                ringStrokeWidth: 40,
                legendOptions: const LegendOptions(showLegends: false),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValues: false,
                ),
              ),
              const Text(
                "\$1738.00",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),

        const SizedBox(height: 10),
        SizedBox(
          height: 125,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  dataMap.entries.map((entry) {
                    final index = dataMap.keys.toList().indexOf(entry.key);
                    final color = colorList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Container(width: 12, height: 12, color: color),
                          const SizedBox(width: 8),
                          Text(
                            "${entry.key}: ${entry.value}%",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            color: const Color.fromARGB(255, 204, 198, 198),
            thickness: 1,
            height: 2,
          ),
        ),
      ],
    );
  }
}
