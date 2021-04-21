import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get_equity/provider_packages/chart_class.dart';

class BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chartList = Provider.of<ChartList>(context).userChartBar;
    List<charts.Series<ChartClass,String >> series = [
      charts.Series(
        id: "Subscribers",
        data:chartList,
        domainFn: (ChartClass sub, _) =>sub.investedIn,
        measureFn: (ChartClass sub, _) => sub.amountInvested,
        colorFn:  (ChartClass sub, _) => sub.color,
      ),
    ];
    return charts.BarChart(series,animate: true,);
  }
}
