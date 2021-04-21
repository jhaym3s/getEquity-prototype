import 'package:flutter/material.dart';
import '../provider_packages/companies_provider.dart';
import '../widget/company_card.dart';
import 'package:provider/provider.dart';

class WatchListPage extends StatefulWidget {
  @override
  _WatchListPageState createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    final companies = Provider.of<CompaniesProvider>(context).watchlist;
    return Scaffold(
      backgroundColor:  Color(0xff173F5F),
      body: companies.isEmpty?Center(child: Text("Nothing to show here"),):ListView.builder(itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: companies[index],
        child:CompanyCard(),
      ),
        itemCount: companies.length,
      ),
    );
  }
}
