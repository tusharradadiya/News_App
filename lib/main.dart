import 'package:flutter/material.dart';
import 'package:news_app/contry/provider/cprovider.dart';
import 'package:news_app/utils/tabbar.dart';
import 'package:provider/provider.dart';

import 'all/provider/newsprovider.dart';
import 'all/view/Newspage.dart';
import 'buisness/provider/bprovider.dart';
import 'health/provider/hprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NewsProvider(),),
        ChangeNotifierProvider(create: (context) => CountryProvider(),),
        ChangeNotifierProvider(create: (context) => HelthProvider(),),
        ChangeNotifierProvider(create: (context) => BusinessProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => TabBaar(),
          'H': (context) => Home_Page(),
        },
      ),
    ),
  );
}