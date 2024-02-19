import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:smart_home_denemesi/widgets/mode_button.dart';

class Devices_LivingRoom_Page extends StatefulWidget {
  const Devices_LivingRoom_Page({super.key});

  @override
  State<Devices_LivingRoom_Page> createState() => _Devices_LivingRoom_PageState();
}

class _Devices_LivingRoom_PageState extends State<Devices_LivingRoom_Page> {
  Map<String, double> dataMap = {"Sıcaklık": 0.99, "": 0.59};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Device Active",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      "On",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CupertinoSwitch(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // chart
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            colorList: [
              Colors.lime.shade600,
              Colors.blueGrey.shade50,
            ],
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 32,
            centerText: "+25 C",
            centerTextStyle: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              color: Colors.grey.shade900,
            ),
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendShape: BoxShape.circle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),

            // gradientList: ---To add gradient colors---
            // emptyColorGradient: ---Empty Color gradient---
          ),
        ),

        // ModeButtons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ModeButton(
              icon: Icons.snowing,
              text: 'Cool',
            ),
            ModeButton(
              icon: Icons.wb_sunny_outlined,
              text: 'Heat',
            ),
            ModeButton(
              icon: Icons.water_outlined,
              text: 'Dry',
            ),
            ModeButton(
              icon: Icons.auto_awesome_outlined,
              text: 'Auto',
            ),
          ],
        ),
        SizedBox(height: 20),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.tv),
                  SizedBox(width: 10),
                  Text(
                    "Fan speed",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              //color: Colors.amber,
              width: double.maxFinite,
              child: Slider(
                value: 75,
                min: 0,
                max: 100,
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Min"), Text("Max")],
              ),
            )
          ],
        ),
      ],
    );
  }
}
