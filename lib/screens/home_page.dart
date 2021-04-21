import 'package:flutter/material.dart';
import 'package:get_equity/provider_packages/companies_provider.dart';
import 'package:get_equity/widget/company_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final companies = Provider.of<CompaniesProvider>(context).companies;
    return Scaffold(
      backgroundColor:  Color(0xff173F5F),
      body: ListView.builder(itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: companies[index],
        child:CompanyCard(),
      ),
        itemCount: companies.length,
      ),
    );
  }
}
