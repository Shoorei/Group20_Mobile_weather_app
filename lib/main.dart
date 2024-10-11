import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/HomePages.dart';
import 'Pages/WishlistPage.dart';
import 'Widgets/WishlistProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WishlistProvider(),
      child: MyApp(),
    ),
  );
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
      home: HomePage(),
      routes: {
        '/wishlist': (context) {
          final wishlistProvider =
              Provider.of<WishlistProvider>(context, listen: false);
          return WishlistPage(
            wishlist: wishlistProvider.wishlist,
            onRemove: (String diachi) {
              wishlistProvider.removeFromWishlist(diachi);
            },
            temperatures: wishlistProvider.temperatures,
            feelsLikeTemps: wishlistProvider.feelsLikeTemps,
            humidities: wishlistProvider.humidities,
            days: wishlistProvider.days,
            months: wishlistProvider.months,
            years: wishlistProvider.years,
            hours: wishlistProvider.hours,
            minutes: wishlistProvider.minutes,
            icons: wishlistProvider.icons,
          );
        },
      },
    );
  }
}
