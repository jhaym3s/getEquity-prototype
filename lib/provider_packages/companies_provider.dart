
import 'package:flutter/cupertino.dart';
import 'package:get_equity/provider_packages/company.dart';

class CompaniesProvider with ChangeNotifier{

  List<Company> _listOfCompanies = [
    Company(companyName: "AgroStock",investor: "Brown Scott",category: "Agriculture",target:24000,
        description:"The world's first web platform for planting a tree remotely and following its story online,  supporting local farmers around the world.",image: "https://images.pexels.com/photos/51947/tuscany-grape-field-nature-51947.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",),
    Company(companyName: "Crowd Stack ",investor: "Virgil Abloh",category: "CrowdFunding",target:24000,
        description: "Crowd funding startup in a crowd funding app what's the odd ",image: "https://images.pexels.com/photos/7413924/pexels-photo-7413924.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Company(companyName: "iLoveChaz",investor: "Bill Scott",category: "Music",target:24000,image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJSGoSc_PjHhEbNvcZ9oh9rKtJW1UjfTNb6w&usqp=CAU",description: "We are dope up coming artist and you all should invest"),
    Company(companyName: "Kompany",investor: "Bill Gate",category: "Automobile",target:24000,image: "https://images.pexels.com/photos/65623/vehicle-chrome-technology-automobile-65623.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description: "An auto mobile company that went bankrupt"),
    Company(companyName: "Space Y",investor: "Elon Musk",category: "Aeronautics",target:24000,image: "https://images.pexels.com/photos/256152/pexels-photo-256152.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a"),
    Company(companyName: "Jhaymes",investor: "Bigbrutha",category: "Tech",target:0101011000,image: "https://images.unsplash.com/photo-1604145559206-e3bce0040e2d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fGRldmVsb3BlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",description: "A flutter developer that would make it big in life and wants to help build getEquity"),
    Company(companyName: "Potato chippers" ,investor: "Henry",category: "Agriculture",target:24000,image: "https://images.pexels.com/photos/4207908/pexels-photo-4207908.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a" ),
    Company(companyName: "Coins",investor: "Tech Bro x10",category: "Fintech",target:24000,image: "https://pbs.twimg.com/media/EtfO2VjWYAIF-jO?format=jpg&name=small",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a"),
    Company(companyName: "Assistant",investor: "Paulinus",category: "Robotics",target:24000,image: "https://images.pexels.com/photos/3913025/pexels-photo-3913025.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a"),
    Company(companyName: "Care pack",investor: "Doctor",category: "Health care ",target:24000,image: "https://images.pexels.com/photos/263402/pexels-photo-263402.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a"),
    Company(companyName: "Naked",investor: "Phil Knight",category: "Fashion",target:24000,image: "https://images.pexels.com/photos/914668/pexels-photo-914668.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a"),
    Company(companyName: "Build",investor: "David",category: "Architecture",target:24000,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a",image:"https://images.pexels.com/photos/262367/pexels-photo-262367.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" ),
    Company(companyName: "Red bull",investor: "Elon Musk",category: "Crypto-trading",target:24000,image: "https://images.pexels.com/photos/844127/pexels-photo-844127.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a",),
    Company(companyName: "Artificial wood",investor: "Carpenters",category: "Furniture",target:24000,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a",image: "https://images.pexels.com/photos/245208/pexels-photo-245208.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Company(companyName: "Vision",investor: "Fisher Scott",category: "AR",target:24000,image: "https://images.pexels.com/photos/2007647/pexels-photo-2007647.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a"),
  ];

  List<Company> get  companies {
    return [..._listOfCompanies];
  }
  List<Company> get watchlist{
    return _listOfCompanies.where((element) => element.addToWatchlist).toList();
  }
}