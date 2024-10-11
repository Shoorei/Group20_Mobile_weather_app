import 'package:flutter/material.dart';
import 'Pages/HomePages.dart';
import 'Pages/WishlistPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(), // Start with HomePage
        '/wishlist': (context) => WishlistPage(
              wishlist: [], // You will need to pass actual data here
              temperatures: [],
              feelsLikeTemps: [],
              humidities: [],
              days: [],
              months: [],
              years: [],
              hours: [],
              minutes: [],
              onRemove: (String diachi) {
                // Pass the actual logic for removing a location
              },
              icons: [],
            ),
      },
    );
  }
}
