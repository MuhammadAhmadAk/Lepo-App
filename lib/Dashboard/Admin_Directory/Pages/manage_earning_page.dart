import 'package:flutter/material.dart';
import 'package:lepo_project/Constants/colors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ManageEarningPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  ManageEarningPage({Key? key}) : super(key: key);

  @override
  ManageEarningPageState createState() => ManageEarningPageState();
}

class ManageEarningPageState extends State<ManageEarningPage> {
  List<_SalesData> data = [
    _SalesData('Jan', 1),
    _SalesData('Feb', 20),
    _SalesData('Mar', 27),
    _SalesData('Apr', 32),
    _SalesData('May', 50)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Text(
        "\$999",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 33, color: appcolor),
      ),
      const Text(
        "Personal Balance",
          style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.w400)
      ),
      const SizedBox(
        height: 6,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Align(
            alignment: Alignment.topLeft,
            child: Text("Overview",
                style: TextStyle(fontSize: 23, color: Colors.black))),
      ),
      const SizedBox(
        height: 5,
      ),

      //Initialize the chart widget
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(color: whiteColor, boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 2.0,
                offset: Offset.fromDirection(7.5))
          ]),
          child: Column(
            children: [
              SfCartesianChart(
                  plotAreaBorderColor: appcolor,
                  palette: const [appcolor, Colors.yellowAccent],
                  enableSideBySideSeriesPlacement: true,
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Earning',
                      // Enable data label
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true),
                    )
                  ]),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Analytics",
                      style: TextStyle(fontSize: 23, color: appcolor),
                    )),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 26,
      ),
      Container(
        height: 100,
        decoration: const BoxDecoration(color: greyColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Earning in November",
                      style: TextStyle(
                          fontSize: 20,
                          color: appcolor,
                          fontWeight: FontWeight.w400)),
                  Text("\$999",
                      style: TextStyle(
                          fontSize: 20,
                          color: appcolor,
                          fontWeight: FontWeight.w400))
                ],
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Avg Selling Price",
                    style: TextStyle(
                        fontSize: 20,
                        color: appcolor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text("\$45",
                      style: TextStyle(
                          fontSize: 20,
                          color: appcolor,
                          fontWeight: FontWeight.w400))
                ],
              )
            ],
          ),
        ),
      ),
    ]));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
