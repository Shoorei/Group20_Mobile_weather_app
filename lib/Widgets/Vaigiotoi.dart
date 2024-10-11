import 'package:flutter/material.dart';

class Vaigiotoi extends StatelessWidget {
  final double nhiet_do_1_gio_toi;
  final int hour_1_gio_toi;
  final int minute_1_gio_toi;
  final String kieu_icon_1_gio_toi;

  final double nhiet_do_2_gio_toi;
  final int hour_2_gio_toi;
  final int minute_2_gio_toi;
  final String kieu_icon_2_gio_toi;

  final double nhiet_do_3_gio_toi;
  final int hour_3_gio_toi;
  final int minute_3_gio_toi;
  final String kieu_icon_3_gio_toi;

  final double nhiet_do_4_gio_toi;
  final int hour_4_gio_toi;
  final int minute_4_gio_toi;
  final String kieu_icon_4_gio_toi;

  final double nhiet_do_5_gio_toi;
  final int hour_5_gio_toi;
  final int minute_5_gio_toi;
  final String kieu_icon_5_gio_toi;

  Vaigiotoi({
    required this.nhiet_do_1_gio_toi,
    required this.hour_1_gio_toi,
    required this.minute_1_gio_toi,
    required this.kieu_icon_1_gio_toi,
    required this.nhiet_do_2_gio_toi,
    required this.hour_2_gio_toi,
    required this.minute_2_gio_toi,
    required this.kieu_icon_2_gio_toi,
    required this.nhiet_do_3_gio_toi,
    required this.hour_3_gio_toi,
    required this.minute_3_gio_toi,
    required this.kieu_icon_3_gio_toi,
    required this.nhiet_do_4_gio_toi,
    required this.hour_4_gio_toi,
    required this.minute_4_gio_toi,
    required this.kieu_icon_4_gio_toi,
    required this.nhiet_do_5_gio_toi,
    required this.hour_5_gio_toi,
    required this.minute_5_gio_toi,
    required this.kieu_icon_5_gio_toi,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(children: [
          // itens unitARIOS
          //  for(int i=0; i<10; i++)

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 85,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    '$hour_1_gio_toi:00', // Chuỗi văn bản ở phía trên
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Image.asset(
                    kieu_icon_1_gio_toi,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Text(
                    '$nhiet_do_1_gio_toi°C', // Chuỗi văn bản ở phía dưới
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 29, 29, 29),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // itens unitARIOS
          //for(int i=0; i<10; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 85,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    '$hour_2_gio_toi:00', // Chuỗi văn bản ở phía trên
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Image.asset(
                    kieu_icon_2_gio_toi,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Text(
                    '$nhiet_do_2_gio_toi°C', // Chuỗi văn bản ở phía dưới
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 29, 29, 29),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // itens unitARIOS
          //for(int i=0; i<10; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 85,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    '$hour_3_gio_toi:00', // Chuỗi văn bản ở phía trên
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Image.asset(
                    kieu_icon_3_gio_toi,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Text(
                    '$nhiet_do_3_gio_toi°C', // Chuỗi văn bản ở phía dưới
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 29, 29, 29),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // itens unitARIOS
          //for(int i=0; i<10; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 85,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    '$hour_4_gio_toi:00', // Chuỗi văn bản ở phía trên
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Image.asset(
                    kieu_icon_4_gio_toi,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Text(
                    '$nhiet_do_4_gio_toi°C', // Chuỗi văn bản ở phía dưới
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 29, 29, 29),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // itens unitARIOS
          //  for(int i=0; i<10; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: 85,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Column(
                children: [
                  Text(
                    '$hour_5_gio_toi:00', // Chuỗi văn bản ở phía trên
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Image.asset(
                    kieu_icon_5_gio_toi,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 5), // Khoảng cách giữa các phần tử
                  Text(
                    '$nhiet_do_5_gio_toi°C', // Chuỗi văn bản ở phía dưới
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 29, 29, 29),
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
