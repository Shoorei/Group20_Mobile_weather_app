import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class WishlistProvider extends ChangeNotifier {
  List<String> _wishlist = [];
  List<double> _temperatures = [];
  List<double> _feelsLikeTemps = [];
  List<double> _humidities = [];
  List<int> _days = [];
  List<int> _months = [];
  List<int> _years = [];
  List<int> _hours = [];
  List<int> _minutes = [];
  List<String> _icons = [];

  List<String> get wishlist => _wishlist;
  List<double> get temperatures => _temperatures;
  List<double> get feelsLikeTemps => _feelsLikeTemps;
  List<double> get humidities => _humidities;
  List<int> get days => _days;
  List<int> get months => _months;
  List<int> get years => _years;
  List<int> get hours => _hours;
  List<int> get minutes => _minutes;
  List<String> get icons => _icons;

  void addToWishlist(
      String location,
      double temp,
      double feelsLike,
      double humidity,
      int day,
      int month,
      int year,
      int hour,
      int minute,
      String icon) {
    _wishlist.add(location);
    _temperatures.add(temp);
    _feelsLikeTemps.add(feelsLike);
    _humidities.add(humidity);
    _days.add(day);
    _months.add(month);
    _years.add(year);
    _hours.add(hour);
    _minutes.add(minute);
    _icons.add(icon);
    notifyListeners();
  }

  void removeFromWishlist(String location) {
    int index = _wishlist.indexOf(location);
    if (index != -1) {
      _wishlist.removeAt(index);
      _temperatures.removeAt(index);
      _feelsLikeTemps.removeAt(index);
      _humidities.removeAt(index);
      _days.removeAt(index);
      _months.removeAt(index);
      _years.removeAt(index);
      _hours.removeAt(index);
      _minutes.removeAt(index);
      _icons.removeAt(index);
      notifyListeners();
    }
  }
}
