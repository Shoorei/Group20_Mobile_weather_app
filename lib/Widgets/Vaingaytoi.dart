import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Vaingaytoi extends StatelessWidget{


  final double nhiet_do_1_ngay_toi;
  final double nhiet_do_1_ngay_toi_max;
  final double nhiet_do_1_ngay_toi_min;
  final int day_1_ngay_toi;
  final int month_1_ngay_toi;
  final String kieu_icon_1_ngay_toi;

  final double nhiet_do_2_ngay_toi;
  final double nhiet_do_2_ngay_toi_max;
  final double nhiet_do_2_ngay_toi_min;
  final int day_2_ngay_toi;
  final int month_2_ngay_toi;
  final String kieu_icon_2_ngay_toi;

  final double nhiet_do_3_ngay_toi;
  final double nhiet_do_3_ngay_toi_max;
  final double nhiet_do_3_ngay_toi_min;
  final int day_3_ngay_toi;
  final int month_3_ngay_toi;
  final String kieu_icon_3_ngay_toi;

  final double nhiet_do_4_ngay_toi;
  final double nhiet_do_4_ngay_toi_max;
  final double nhiet_do_4_ngay_toi_min;
  final int day_4_ngay_toi;
  final int month_4_ngay_toi;
  final String kieu_icon_4_ngay_toi;

  final double nhiet_do_5_ngay_toi;
  final double nhiet_do_5_ngay_toi_max;
  final double nhiet_do_5_ngay_toi_min;
  final int day_5_ngay_toi;
  final int month_5_ngay_toi;
  final String kieu_icon_5_ngay_toi;

  final double nhiet_do_6_ngay_toi;
  final double nhiet_do_6_ngay_toi_max;
  final double nhiet_do_6_ngay_toi_min;
  final int day_6_ngay_toi;
  final int month_6_ngay_toi;
  final String kieu_icon_6_ngay_toi;

  final double nhiet_do_7_ngay_toi;
  final double nhiet_do_7_ngay_toi_max;
  final double nhiet_do_7_ngay_toi_min;
  final int day_7_ngay_toi;
  final int month_7_ngay_toi;
  final String kieu_icon_7_ngay_toi;





  Vaingaytoi({required this.nhiet_do_1_ngay_toi,
            required this.nhiet_do_1_ngay_toi_max,
            required this.nhiet_do_1_ngay_toi_min,
            required this.day_1_ngay_toi,
            required this.month_1_ngay_toi,
            required this.kieu_icon_1_ngay_toi,

            required this.nhiet_do_2_ngay_toi,
            required this.nhiet_do_2_ngay_toi_max,
            required this.nhiet_do_2_ngay_toi_min,
            required this.day_2_ngay_toi,
            required this.month_2_ngay_toi,
            required this.kieu_icon_2_ngay_toi,

            required this.nhiet_do_3_ngay_toi,
            required this.nhiet_do_3_ngay_toi_max,
            required this.nhiet_do_3_ngay_toi_min,
            required this.day_3_ngay_toi,
            required this.month_3_ngay_toi,
            required this.kieu_icon_3_ngay_toi,

            required this.nhiet_do_4_ngay_toi,
            required this.nhiet_do_4_ngay_toi_max,
            required this.nhiet_do_4_ngay_toi_min,
            required this.day_4_ngay_toi,
            required this.month_4_ngay_toi,
            required this.kieu_icon_4_ngay_toi,

            required this.nhiet_do_5_ngay_toi,
            required this.nhiet_do_5_ngay_toi_max,
            required this.nhiet_do_5_ngay_toi_min,
            required this.day_5_ngay_toi,
            required this.month_5_ngay_toi,
            required this.kieu_icon_5_ngay_toi,

            required this.nhiet_do_6_ngay_toi,
            required this.nhiet_do_6_ngay_toi_max,
            required this.nhiet_do_6_ngay_toi_min,
            required this.day_6_ngay_toi,
            required this.month_6_ngay_toi,
            required this.kieu_icon_6_ngay_toi,

            required this.nhiet_do_7_ngay_toi,
            required this.nhiet_do_7_ngay_toi_max,
            required this.nhiet_do_7_ngay_toi_min,
            required this.day_7_ngay_toi,
            required this.month_7_ngay_toi,
            required this.kieu_icon_7_ngay_toi,
            
            
            
            });

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          children: [
           // for(int i=0; i<10; i++)
              // unicos unitarios
            
            
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_1_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_1_ngay_toi/$month_1_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_1_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_1_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_1_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),




           Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_2_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_2_ngay_toi/$month_2_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_2_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_2_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_2_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),




            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_3_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_3_ngay_toi/$month_3_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_3_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_3_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_3_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),


            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_4_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_4_ngay_toi/$month_4_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_4_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_4_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_4_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),


            
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_5_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_5_ngay_toi/$month_5_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_5_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_5_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_5_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),



            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_6_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_6_ngay_toi/$month_6_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_6_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_6_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_6_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),



            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          kieu_icon_7_ngay_toi,
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 30.0), // Thêm padding cho Container
                      child: Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Ngày $day_7_ngay_toi/$month_7_ngay_toi",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$nhiet_do_7_ngay_toi°C",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            Text(
                              "min: $nhiet_do_7_ngay_toi_min°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Max: $nhiet_do_7_ngay_toi_max°C",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),




            









          ],
        ),

      ),
    );
  }
}