import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/bar_charts_widgets.dart';

class MyPortfolioPage extends StatefulWidget {
  @override
  _MyPortfolioPageState createState() => _MyPortfolioPageState();
}

class _MyPortfolioPageState extends State<MyPortfolioPage> {
  columnText(String number, String underNumber) {
    return Column(
      children: [
        Text(
          "$number",
          style: TextStyle(fontSize: 30),
        ),
        Text(
          "$underNumber",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff173F5F),
      body: SafeArea(
        child:
            Card(
              color: Colors.white,
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Active Portfolio",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 30,
                        letterSpacing: 0.0,
                        wordSpacing: 0.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Container(
                        width: deviceSize.width,
                        height: 300,
                        child: BarChart()),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Total in wallets"),
                  ),
                  Text("\$ 274,000"),
                  RichText(
                    text: TextSpan(
                      text: 'Invested:',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: '\$${0101010}',
                            style: TextStyle(color: Colors.lightBlue)),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        columnText("\+${44}", "interest"),
                        columnText("${4}", "Investments"),
                        columnText("${8}", "Companies"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /*
            Card(
              elevation: 3,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Pending Investments",
                      style: TextStyle(
                          fontSize: 30, letterSpacing: 0, wordSpacing: 0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("JHAYMES",style: TextStyle(fontSize: 20,color: Colors.blue[700]),),
                      Text("\$ ${49000}"),
                  ],),
                  Text("Insufficient Portfolio reserve balance",style: TextStyle                         (fontSize: 19),),
                ],
              ),
            )

             */

      ),
    );
  }
}
