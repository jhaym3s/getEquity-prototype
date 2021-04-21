import 'package:flutter/material.dart';
import 'package:get_equity/screens/account_page.dart';
import 'package:get_equity/screens/my_portfolio.dart';
import 'package:get_equity/screens/watchlist.dart';
import '../screens/home_page.dart';


class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late List<Map<Object, Object>> pages;

  int selectedPageIndex = 0;
  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }
  @override
  void initState() {
    pages = [
      {"pages": HomePage(),
        //how to add actions to a tap bar
      },
      {"pages": WatchListPage(),
      } ,
      {"pages": MyPortfolioPage(),
      },
      {"pages": AccountPage(),
      },
      /*
      {"pages": Screen.Notification(),
        "title": "Update",
        "action": IconButton(icon: Icon(Icons.receipt_rounded), onPressed: (){}),
      },
       */
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stacked_line_chart_outlined,
                size: 30,
              ),
              title: Text("Opportunities"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                size: 30,
              ),
              title: Text("Watchlist"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stacked_bar_chart,
                size: 30,
              ),
              title: Text("Portfolio"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              title: Text("Account"),
              backgroundColor: Colors.purpleAccent),
          /*
          BottomNavigationBarItem(
              icon: Icon(
                Icons.collections_bookmark,
                size: 30,
              ),
              title: Text("Analysis"),
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              title: Text("Notifications"),
              backgroundColor: Colors.purpleAccent),

           */
        ],
        onTap: selectPage,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.fixed,
      ),
      //drawer: pages[selectedPageIndex]["actions"],
      drawer: pages[selectedPageIndex]["drawer"] as Widget?,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/icon_stuff.jpg",height: 35,)
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.mark_email_unread_sharp,color:Color(0xff173F5F)), onPressed: (){}),
        ],
      ),
      body: pages[selectedPageIndex]["pages"] as Widget?,
    );
  }
}