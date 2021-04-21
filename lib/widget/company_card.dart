import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_equity/provider_packages/company.dart';
import 'package:get_equity/screens/companies_detail_page.dart';
import 'package:provider/provider.dart';

class CompanyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final company = Provider.of<Company>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(CompanyDetailPage.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            width: deviceSize.width,
            height: deviceSize.height / 1.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 7, right: 8, left: 8),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Image.network(
                    company.image!,
                    height: double.maxFinite,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  )),
                  Text(
                    company.companyName!,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Card(
                    child: Text(company.category!),
                    color: Colors.grey.shade300,
                  ),
                  Text(company.description!),
                  Text(
                    "Co-investors:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("${company.investor}"),
                  Consumer<Company>(
                    builder: (ctx, company, _) => IconButton(
                      icon: Icon(
                        company.addToWatchlist
                            ? Icons.star
                            : Icons.star_border_outlined,
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        company.toggleWatchlist();
                      },
                    ),
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "Funding Target: ${company.target}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    width: deviceSize.width,
                    height: 50,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
