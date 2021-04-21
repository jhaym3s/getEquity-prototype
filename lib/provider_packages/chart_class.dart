// ignore: import_of_legacy_library_into_null_safe
import 'package:charts_flutter/flutter.dart' as chart;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'company.dart';

class ChartClass {
  final String? investedIn;
  final double? amountInvested;
  final chart.Color? color;

  ChartClass({
    this.color,
    this.investedIn,
    this.amountInvested
  });
}

class ChartList with ChangeNotifier{

  List<ChartClass> _userChartBar =  [
   ChartClass(
      color: chart.ColorUtil.fromDartColor(Colors.blue),
      amountInvested: 16,
      investedIn: "Jhaymes",
    ),
    ChartClass(
      color: chart.ColorUtil.fromDartColor(Colors.orange),
      amountInvested: 12,
      investedIn: "AgroStock",
    ),ChartClass(
      color: chart.ColorUtil.fromDartColor(Colors.red),
      amountInvested: 18,
      investedIn: "Coins",
    ),
    ChartClass(
      color: chart.ColorUtil.fromDartColor(Colors.purple),
      amountInvested: 30,
      investedIn: "Kompany",
    ),
  ];

  List<ChartClass>get userChartBar{
    return [..._userChartBar];
  }

}