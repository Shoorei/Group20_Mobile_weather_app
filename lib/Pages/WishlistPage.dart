import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  final List<String> wishlist; // List of location names
  final Function(String) onRemove;
  final List<double> temperatures;
  final List<double> feelsLikeTemps;
  final List<double> humidities;
  final List<int> days, months, years, hours, minutes; // Time-related data
  final List<String>
      icons; // List of weather codes (e.g., 1 for rain, 2 for cloud)

  WishlistPage({
    required this.wishlist,
    required this.onRemove,
    required this.temperatures,
    required this.feelsLikeTemps,
    required this.humidities,
    required this.days,
    required this.months,
    required this.years,
    required this.hours,
    required this.minutes,
    required this.icons, // Include the icons list
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wishlist'),
        backgroundColor: Color.fromARGB(221, 253, 43, 16),
      ),
      body: wishlist.isEmpty
          ? Center(
              child: Text(
                'No locations added to the wishlist yet.',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: wishlist.length,
              itemBuilder: (context, index) {
                final diachi = wishlist[index];

                // Fetch corresponding weather data based on index
                final double temperature = temperatures[index];
                final double feelsLikeTemp = feelsLikeTemps[index];
                final double humidity = humidities[index];
                final int day = days[index];
                final int month = months[index];
                final int year = years[index];
                final int hour = hours[index];
                final int minute = minutes[index];
                // final int iconCode = icons[index];

                // Determine the icon based on the weather code
                String weatherIcon;
                // if (iconCode == 1) {
                //   weatherIcon = 'assets/images/rain.png';
                // } else if (iconCode == 2) {
                //   weatherIcon = 'assets/images/cloud.png';
                // } else {
                //   weatherIcon = 'assets/images/clearsky.png';
                // }

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15.0),
                  child: Dismissible(
                    key: Key(diachi),
                    onDismissed: (direction) {
                      onRemove(diachi);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$diachi removed from wishlist'),
                        ),
                      );
                    },
                    background: Container(
                      color: Colors.redAccent,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        title: Text(
                          diachi,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Temperature: ${temperature.toStringAsFixed(1)}°C',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Feels like: ${feelsLikeTemp.toStringAsFixed(1)}°C',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Humidity: ${humidity.toStringAsFixed(1)}%',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              'Date: $day/$month/$year, Time: $hour:$minute',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        // leading: Image.asset(
                        //   weatherIcon,
                        //   width: 40,
                        //   height: 40,
                        // ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            onRemove(diachi);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('$diachi removed from wishlist'),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
