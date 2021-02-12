import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/viewmodels/CityEntryViewModel.dart';
import 'package:weather/viewmodels/ForecastViewModel.dart';
import 'package:weather/views/HomeView.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CityEntryViewModel>(
        create: (_) => CityEntryViewModel()),
    ChangeNotifierProvider<ForecastViewModel>(
        create: (_) => ForecastViewModel()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Provider',
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}