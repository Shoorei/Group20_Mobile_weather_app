import 'package:flutter/material.dart';

class Nhietdochung extends StatelessWidget {

    final double nhiet_do_hien_tai;
    final double nhiet_do_cam_nhan;
    final double do_am;
    final double tamnhinxa;
    final double uvi;
    final double wind_speed;
    final String diachi;
    final String kieu_icon; 
    final int ngay;
    final int thang;
    final int nam;
    final int gio;
    final int phut;


    Nhietdochung({
      required this.nhiet_do_hien_tai,
      required this.nhiet_do_cam_nhan, 
      required this.do_am, 
      required this.tamnhinxa, 
      required this.uvi,
      required this.wind_speed,
      required this.diachi, 
      required this.kieu_icon, 
      required this.ngay, 
      required this.thang, 
      required this.nam, 
      required this.gio, 
      required this.phut,
      });

    @override
    Widget build(BuildContext context){
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            child: Row(
              children: [    
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: Container(
                      width: 475,
                      height: 365,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 126, 126, 126).withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: Offset(0,3),
                          ),
                        ]
                      ),


                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0), // Độ lệch từ bên trái
                              child: Text(
                                "$diachi",
                                style: TextStyle(
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 143.0), // Độ lệch từ bên trái
                              child: Text(
                                "$ngay/$thang/$nam  $gio:$phut",
                                style: TextStyle(
                                  fontSize: 20,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            

                        
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                "$nhiet_do_hien_tai°C",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.only(left: 25.0, right: 35.0),// Padding cho cả hai bên
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Độ ẩm: $do_am%",
                                        style: TextStyle(
                                          fontSize: 18,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Tầm nhìn xa: $tamnhinxa km",
                                        style: TextStyle(
                                          fontSize: 18,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Chỉ số tia UV: $uvi ",
                                        style: TextStyle(
                                          fontSize: 18,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Tốc độ gió: $wind_speed m/s",
                                        style: TextStyle(
                                          fontSize: 18,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, "");
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        kieu_icon,
                                        height: 170,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                         
                            


                            SizedBox(height: 8),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 12), // Thêm padding bên phải cho phần Text
                                  child: Text(
                                    "Nhiệt độ cảm nhận thực tế : $nhiet_do_cam_nhan°C",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 63, 128, 153),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 0.0), // Thêm padding bên trái cho phần Icon
                                  child: Icon(
                                    Icons.cloud_done_outlined,
                                    color: Color.fromARGB(255, 43, 164, 235),
                                    size: 26,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),

                
              ],
            ),
          ),
      );
    }


}