
import 'package:flutter/cupertino.dart';

class Company with ChangeNotifier{
  final String? image,companyName,category,description,investor;
  final double? target;
  bool addToWatchlist;

  Company({
    this.image,
    this.category,
    this.companyName,
    this.description,
    this.target,
    this.addToWatchlist = false,
    this.investor,
  });

 void toggleWatchlist(){
    addToWatchlist = !addToWatchlist;
    notifyListeners();
  }
}