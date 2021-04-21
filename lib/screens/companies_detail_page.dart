import 'package:flutter/material.dart';
import 'package:get_equity/widget/bar_charts_widgets.dart';

class CompanyDetailPage extends StatefulWidget {
  static const routeName = "details_page";
  @override
  _CompanyDetailPageState createState() => _CompanyDetailPageState();
}

class _CompanyDetailPageState extends State<CompanyDetailPage> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(width:deviceSize.width ,height: 300,
                  child: BarChart()),
            ),
          ],
        ),
      ),
    );
  }
}
