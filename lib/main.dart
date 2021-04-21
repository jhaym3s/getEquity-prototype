import 'package:flutter/material.dart';
import 'package:get_equity/provider_packages/chart_class.dart';
import 'package:get_equity/provider_packages/companies_provider.dart';
import 'package:get_equity/screens/companies_detail_page.dart';
import './provider_packages/company.dart';
import './widget/custom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => Company(),),
        ChangeNotifierProvider(create: (BuildContext context) => CompaniesProvider(),),
        ChangeNotifierProvider(create: (BuildContext context) => ChartList(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CustomNavigationBar(),
        routes: {
          CompanyDetailPage.routeName:(context) => CompanyDetailPage(),

        },
      ),
    );
  }
}

