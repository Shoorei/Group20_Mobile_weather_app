import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Pages/WishListPage.dart';

class DrawerWidget extends StatelessWidget {
  final List<String> wishlist;
  final List<double> temperatures;
  final List<double> feelsLikeTemps;
  final List<double> humidities;
  final List<int> days;
  final List<int> months;
  final List<int> years;
  final List<int> hours;
  final List<int> minutes;

  DrawerWidget({
    required this.wishlist,
    required this.temperatures,
    required this.feelsLikeTemps,
    required this.humidities,
    required this.days,
    required this.months,
    required this.years,
    required this.hours,
    required this.minutes,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(221, 253, 43, 16),
              ),
              accountName: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  "Dương Phúc Nam",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              accountEmail: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  "phucdepzai123@Gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/anh1.jpg"),
                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            leading: Icon(
              CupertinoIcons.home,
              color: Color.fromARGB(255, 240, 35, 21),
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ""); // Navigate to My Account
            },
            leading: Icon(
              CupertinoIcons.person,
              color: Color.fromARGB(255, 240, 35, 21),
            ),
            title: Text(
              "My account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ""); // Navigate to My Position
            },
            leading: Icon(
              CupertinoIcons.map_pin_ellipse,
              color: Color.fromARGB(255, 240, 35, 21),
            ),
            title: Text(
              "My position",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WishlistPage(
                    wishlist: wishlist, // This contains the location names
                    temperatures: temperatures,
                    feelsLikeTemps: feelsLikeTemps,
                    humidities: humidities,
                    days: days,
                    months: months,
                    years: years,
                    hours: hours,
                    minutes: minutes,
                    onRemove: (String diachi) {
                      // Call a function or directly remove the location from wishlist
                      wishlist.remove(diachi); // Update wishlist
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text('$diachi removed from wishlist')),
                      );
                    },
                    icons: [],
                  ),
                ),
              );
            },
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Color.fromARGB(255, 240, 35, 21),
            ),
            title: Text(
              "My Wish List",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ""); // Navigate to Settings
            },
            leading: Icon(
              CupertinoIcons.settings,
              color: Color.fromARGB(255, 240, 35, 21),
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ""); // Log Out
            },
            leading: Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 240, 35, 21),
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
