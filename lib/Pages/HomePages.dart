import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Widgets/Vaigiotoi.dart';
import 'package:flutter_application_5/Widgets/Vaingaytoi.dart';
import '../Widgets/AppBarWidget.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/Nhietdochung.dart';
import '../Widgets/WishlistProvider.dart';
import '../Widgets/callapi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late WishlistProvider wishlistProvider;
  TextEditingController _textEditingController = TextEditingController();
  String diachi = 'Hà Nội';
  double vi_do = 21.0245;
  double kinh_do = 105.8412;
  double nhiet_do_hien_tai = 0;
  double nhiet_do_cam_nhan = 0;
  double do_am = 0;
  double tamnhinxa = 0;
  double dt = 0;
  double icon = 0;
  double uvi = 0;
  double wind_speed = 0;
  String kieu_icon = '';

  int day_now = 0;
  int month_now = 0;
  int year_now = 0;
  int hour_now = 0;
  int minute_now = 0;

  double nhiet_do_1_ngay_toi = 0;
  double nhiet_do_1_ngay_toi_max = 0;
  double nhiet_do_1_ngay_toi_min = 0;
  double dt_1_ngay_toi = 0;
  double icon_1_ngay_toi = 0;
  String kieu_icon_1_ngay_toi = '';
  int day_1_ngay_toi = 0;
  int month_1_ngay_toi = 0;

  double nhiet_do_2_ngay_toi = 0;
  double nhiet_do_2_ngay_toi_max = 0;
  double nhiet_do_2_ngay_toi_min = 0;
  double dt_2_ngay_toi = 0;
  double icon_2_ngay_toi = 0;
  String kieu_icon_2_ngay_toi = '';
  int day_2_ngay_toi = 0;
  int month_2_ngay_toi = 0;

  double nhiet_do_3_ngay_toi = 0;
  double nhiet_do_3_ngay_toi_max = 0;
  double nhiet_do_3_ngay_toi_min = 0;
  double dt_3_ngay_toi = 0;
  double icon_3_ngay_toi = 0;
  String kieu_icon_3_ngay_toi = '';
  int day_3_ngay_toi = 0;
  int month_3_ngay_toi = 0;

  double nhiet_do_4_ngay_toi = 0;
  double nhiet_do_4_ngay_toi_max = 0;
  double nhiet_do_4_ngay_toi_min = 0;
  double dt_4_ngay_toi = 0;
  double icon_4_ngay_toi = 0;
  String kieu_icon_4_ngay_toi = '';
  int day_4_ngay_toi = 0;
  int month_4_ngay_toi = 0;

  double nhiet_do_5_ngay_toi = 0;
  double nhiet_do_5_ngay_toi_max = 0;
  double nhiet_do_5_ngay_toi_min = 0;
  double dt_5_ngay_toi = 0;
  double icon_5_ngay_toi = 0;
  String kieu_icon_5_ngay_toi = '';
  int day_5_ngay_toi = 0;
  int month_5_ngay_toi = 0;

  double nhiet_do_6_ngay_toi = 0;
  double nhiet_do_6_ngay_toi_max = 0;
  double nhiet_do_6_ngay_toi_min = 0;
  double dt_6_ngay_toi = 0;
  double icon_6_ngay_toi = 0;
  String kieu_icon_6_ngay_toi = '';
  int day_6_ngay_toi = 0;
  int month_6_ngay_toi = 0;

  double nhiet_do_7_ngay_toi = 0;
  double nhiet_do_7_ngay_toi_max = 0;
  double nhiet_do_7_ngay_toi_min = 0;
  double dt_7_ngay_toi = 0;
  double icon_7_ngay_toi = 0;
  String kieu_icon_7_ngay_toi = '';
  int day_7_ngay_toi = 0;
  int month_7_ngay_toi = 0;

  double nhiet_do_1_gio_toi = 0;
  double dt_1_gio_toi = 0;
  double icon_1_gio_toi = 0;
  String kieu_icon_1_gio_toi = '';
  int hour_1_gio_toi = 0;
  int minute_1_gio_toi = 0;

  double nhiet_do_2_gio_toi = 0;
  double dt_2_gio_toi = 0;
  double icon_2_gio_toi = 0;
  String kieu_icon_2_gio_toi = '';
  int hour_2_gio_toi = 0;
  int minute_2_gio_toi = 0;

  double nhiet_do_3_gio_toi = 0;
  double dt_3_gio_toi = 0;
  double icon_3_gio_toi = 0;
  String kieu_icon_3_gio_toi = '';
  int hour_3_gio_toi = 0;
  int minute_3_gio_toi = 0;

  double nhiet_do_4_gio_toi = 0;
  double dt_4_gio_toi = 0;
  double icon_4_gio_toi = 0;
  String kieu_icon_4_gio_toi = '';
  int hour_4_gio_toi = 0;
  int minute_4_gio_toi = 0;

  double nhiet_do_5_gio_toi = 0;
  double dt_5_gio_toi = 0;
  double icon_5_gio_toi = 0;
  String kieu_icon_5_gio_toi = '';
  int hour_5_gio_toi = 0;
  int minute_5_gio_toi = 0;

  bool isInWishlist = false;

  List<String> wishlist = [];

  ScrollController _scrollController = ScrollController();

  bool isWishlisted(String diachi) {
    return wishlist.contains(diachi);
  }

  @override
  void initState() {
    super.initState();
    super.initState();
    wishlistProvider = Provider.of<WishlistProvider>(context, listen: false);
    // Trigger the API request immediately when the app starts
    solieu();
  }

  // Function to add or remove from wishlist
  void _toggleWishlist(String location) {
    if (wishlistProvider.wishlist.contains(location)) {
      wishlistProvider.removeFromWishlist(location);
    } else {
      wishlistProvider.addToWishlist(
        location,
        nhiet_do_hien_tai,
        nhiet_do_cam_nhan,
        do_am,
        day_now,
        month_now,
        year_now,
        hour_now,
        minute_now,
        kieu_icon,
      );
    }
    setState(() {
      isInWishlist = wishlistProvider.wishlist.contains(location);
    });
  }

  void solieu() async {
    // Ensure diachi has a proper value (default or user input)
    if (diachi == '') {
      diachi = 'Hà Nội'; // Default to "Hà Nội" if no location is provided
    }
    if (diachi == 'Hà Nội') {
      vi_do = 21.0245;
      kinh_do = 105.8412;
    } else if (diachi == 'Hải Phòng') {
      vi_do = 20.8561;
      kinh_do = 106.6822;
    } else if (diachi == 'Vĩnh Phúc') {
      vi_do = 18.4169;
      kinh_do = 105.6954;
    } else if (diachi == 'Bắc Ninh') {
      vi_do = 21.1833;
      kinh_do = 106.05;
    } else if (diachi == 'Hưng Yên') {
      vi_do = 20.6491;
      kinh_do = 106.051;
    } else if (diachi == 'Thái Bình') {
      vi_do = 20.4493;
      kinh_do = 106.3425;
    } else if (diachi == 'Hà Nam') {
      vi_do = 16.3358;
      kinh_do = 107.7706;
    } else if (diachi == 'Nam Định') {
      vi_do = 20.423;
      kinh_do = 106.1684;
    } else if (diachi == 'Ninh Bình') {
      vi_do = 20.2545;
      kinh_do = 105.9765;
    } else if (diachi == 'Hà Giang') {
      vi_do = 22.8274;
      kinh_do = 104.9866;
    } else if (diachi == 'Cao Bằng') {
      vi_do = 22.6667;
      kinh_do = 106.2588;
    } else if (diachi == 'Bắc Cạn') {
      vi_do = 22.1495;
      kinh_do = 105.8372;
    } else if (diachi == 'Tuyên Quang') {
      vi_do = 21.8233;
      kinh_do = 105.2181;
    } else if (diachi == 'Lào Cai') {
      vi_do = 20.423;
      kinh_do = 106.1684;
    } else if (diachi == 'Yên Bái') {
      vi_do = 21.7026;
      kinh_do = 104.8714;
    } else if (diachi == 'Lạng Sơn') {
      vi_do = 21.8505;
      kinh_do = 106.7662;
    } else if (diachi == 'Bắc Giang') {
      vi_do = 21.2779;
      kinh_do = 106.1939;
    } else if (diachi == 'Phú Thọ') {
      vi_do = 21.4065;
      kinh_do = 105.2215;
    } else if (diachi == 'Lai châu') {
      vi_do = 22.3997;
      kinh_do = 103.4517;
    } else if (diachi == 'Sơn La') {
      vi_do = 21.3283;
      kinh_do = 103.9005;
    } else if (diachi == 'Hòa Bình') {
      vi_do = 105.3453;
      kinh_do = 105.3453;
    } else if (diachi == 'Thanh Hóa') {
      vi_do = 19.8;
      kinh_do = 105.7667;
    } else if (diachi == 'Hà Tĩnh') {
      vi_do = 18.3453;
      kinh_do = 105.9019;
    } else if (diachi == 'Quảng Trị') {
      vi_do = 16.75;
      kinh_do = 107.2;
    } else if (diachi == 'Huế') {
      vi_do = 16.4667;
      kinh_do = 107.6;
    } else if (diachi == 'Đà Nẵng') {
      vi_do = 16.0678;
      kinh_do = 108.2208;
    } else if (diachi == 'Quảng Ngãi') {
      vi_do = 15.1167;
      kinh_do = 108.8;
    } else if (diachi == 'Bình Định') {
      vi_do = 13.886;
      kinh_do = 109.1117;
    } else if (diachi == 'Khánh Hòa') {
      vi_do = 10.6765;
      kinh_do = 105.1903;
    } else if (diachi == 'Kon Tum') {
      vi_do = 14.75;
      kinh_do = 107.9167;
    } else if (diachi == 'Gia Lai') {
      vi_do = 13.75;
      kinh_do = 108.25;
    } else if (diachi == 'Bình Dương') {
      vi_do = 14.2972;
      kinh_do = 109.0797;
    } else if (diachi == 'thành phố Hồ Chí Minh') {
      vi_do = 10.8333;
      kinh_do = 106.6667;
    } else if (diachi == 'Long An') {
      vi_do = 10.6667;
      kinh_do = 106.1667;
    } else if (diachi == 'Bến Tre') {
      vi_do = 10.2448;
      kinh_do = 106.3735;
    } else if (diachi == 'Trà Vinh') {
      vi_do = 9.9356;
      kinh_do = 106.3398;
    } else if (diachi == 'Vĩnh Long') {
      vi_do = 10.2544;
      kinh_do = 105.967;
    } else if (diachi == 'An Giang') {
      vi_do = 10.5;
      kinh_do = 105.1667;
    } else if (diachi == 'Cần Thơ') {
      vi_do = 10.0333;
      kinh_do = 105.7833;
    } else if (diachi == 'Sóc Trăng') {
      vi_do = 9.6081;
      kinh_do = 105.9715;
    } else if (diachi == 'Bạc Liêu') {
      vi_do = 9.2825;
      kinh_do = 105.7261;
    } else if (diachi == 'Cà Mau') {
      vi_do = 9.1792;
      kinh_do = 105.1458;
    } else {
      vi_do = 21.0245;
      kinh_do = 105.8412;
    }
    try {
      // Make the API request
      var request = Request();
      var result = await request.getHttp(vi_do, kinh_do);

      // Update the state with the fetched data
      setState(() {
        // Check if the location (diachi) is already in the wishlist
        isInWishlist = wishlist.contains(diachi);

        if (!isInWishlist) {
          wishlist.add(
              diachi); // Add the location only if it's not already in the wishlist
        }

        // Update the weather and other related data
        nhiet_do_hien_tai = result[0];
        nhiet_do_cam_nhan = result[1];
        do_am = result[2];
        tamnhinxa = result[3] / 1000; // Convert to kilometers
        dt = result[4];
        icon = result[5];
        uvi = result[56];
        wind_speed = result[57];

        // Update the icon based on the weather code
        if (icon == 1) {
          kieu_icon = 'assets/images/rain.png';
        } else if (icon == 2) {
          kieu_icon = 'assets/images/cloud.png';
        } else {
          kieu_icon = 'assets/images/clearsky.png';
        }

        // Parse the date-time from the response data
        DateTime dateTime =
            DateTime.fromMillisecondsSinceEpoch(dt.toInt() * 1000);
        day_now = dateTime.day;
        month_now = dateTime.month;
        year_now = dateTime.year;
        hour_now = dateTime.hour;
        minute_now = dateTime.minute;

        // Additional processing for future hourly and daily weather data...
      });
    } catch (e) {
      print('Error fetching weather data: $e');
    }
    var request = Request();
    var result = await request.getHttp(vi_do, kinh_do);

    // Thông số của hôm nay
    nhiet_do_hien_tai = result[0];
    nhiet_do_cam_nhan = result[1];
    do_am = result[2];
    tamnhinxa = result[3];
    tamnhinxa = tamnhinxa / 1000;
    dt = result[4];
    icon = result[5];
    uvi = result[56];
    wind_speed = result[57];

    if (icon == 1) {
      kieu_icon = 'assets/images/rain.png';
    } else if (icon == 2) {
      kieu_icon = 'assets/images/cloud.png';
    } else {
      kieu_icon = 'assets/images/clearsky.png';
    }

    int maso_time = dt.toInt();
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(maso_time * 1000);

    day_now = dateTime.day;
    month_now = dateTime.month;
    year_now = dateTime.year;
    hour_now = dateTime.hour;
    minute_now = dateTime.minute;

    // thong số của 1 ngày tới
    nhiet_do_1_ngay_toi = result[6];
    nhiet_do_1_ngay_toi_max = result[7];
    nhiet_do_1_ngay_toi_min = result[8];
    dt_1_ngay_toi = result[9];
    icon_1_ngay_toi = result[10];

    if (icon_1_ngay_toi == 1) {
      kieu_icon_1_ngay_toi = 'assets/images/rain.png';
    } else if (icon_1_ngay_toi == 2) {
      kieu_icon_1_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_1_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_1_ngay_toi = dt_1_ngay_toi.toInt();
    DateTime dateTime_1_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_1_ngay_toi * 1000);
    day_1_ngay_toi = dateTime_1_ngay_toi.day;
    month_1_ngay_toi = dateTime_1_ngay_toi.month;

    // thong số của 2 ngày tới
    nhiet_do_2_ngay_toi = result[11];
    nhiet_do_2_ngay_toi_max = result[12];
    nhiet_do_2_ngay_toi_min = result[13];
    dt_2_ngay_toi = result[14];
    icon_2_ngay_toi = result[15];

    if (icon_2_ngay_toi == 1) {
      kieu_icon_2_ngay_toi = 'assets/images/rain.png';
    } else if (icon_2_ngay_toi == 2) {
      kieu_icon_2_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_2_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_2_ngay_toi = dt_2_ngay_toi.toInt();
    DateTime dateTime_2_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_2_ngay_toi * 1000);
    day_2_ngay_toi = dateTime_2_ngay_toi.day;
    month_2_ngay_toi = dateTime_2_ngay_toi.month;

    // thong số của 3 ngày tới
    nhiet_do_3_ngay_toi = result[16];
    nhiet_do_3_ngay_toi_max = result[17];
    nhiet_do_3_ngay_toi_min = result[18];
    dt_3_ngay_toi = result[19];
    icon_3_ngay_toi = result[20];

    if (icon_3_ngay_toi == 1) {
      kieu_icon_3_ngay_toi = 'assets/images/rain.png';
    } else if (icon_3_ngay_toi == 2) {
      kieu_icon_3_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_3_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_3_ngay_toi = dt_3_ngay_toi.toInt();
    DateTime dateTime_3_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_3_ngay_toi * 1000);
    day_3_ngay_toi = dateTime_3_ngay_toi.day;
    month_3_ngay_toi = dateTime_3_ngay_toi.month;

    //thong số của 4 ngày tới
    nhiet_do_4_ngay_toi = result[21];
    nhiet_do_4_ngay_toi_max = result[22];
    nhiet_do_4_ngay_toi_min = result[23];
    dt_4_ngay_toi = result[24];
    icon_4_ngay_toi = result[25];

    if (icon_4_ngay_toi == 1) {
      kieu_icon_4_ngay_toi = 'assets/images/rain.png';
    } else if (icon_4_ngay_toi == 2) {
      kieu_icon_4_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_4_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_4_ngay_toi = dt_4_ngay_toi.toInt();
    DateTime dateTime_4_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_4_ngay_toi * 1000);
    day_4_ngay_toi = dateTime_4_ngay_toi.day;
    month_4_ngay_toi = dateTime_4_ngay_toi.month;

    //thong số của 5 ngày tới
    nhiet_do_5_ngay_toi = result[26];
    nhiet_do_5_ngay_toi_max = result[27];
    nhiet_do_5_ngay_toi_min = result[28];
    dt_5_ngay_toi = result[29];
    icon_5_ngay_toi = result[30];

    if (icon_5_ngay_toi == 1) {
      kieu_icon_5_ngay_toi = 'assets/images/rain.png';
    } else if (icon_5_ngay_toi == 2) {
      kieu_icon_5_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_5_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_5_ngay_toi = dt_5_ngay_toi.toInt();
    DateTime dateTime_5_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_5_ngay_toi * 1000);
    day_5_ngay_toi = dateTime_5_ngay_toi.day;
    month_5_ngay_toi = dateTime_5_ngay_toi.month;

    //thong số của 6 ngày tới
    nhiet_do_6_ngay_toi = result[31];
    nhiet_do_6_ngay_toi_max = result[32];
    nhiet_do_6_ngay_toi_min = result[33];
    dt_6_ngay_toi = result[34];
    icon_6_ngay_toi = result[35];

    if (icon_6_ngay_toi == 1) {
      kieu_icon_6_ngay_toi = 'assets/images/rain.png';
    } else if (icon_6_ngay_toi == 2) {
      kieu_icon_6_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_6_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_6_ngay_toi = dt_6_ngay_toi.toInt();
    DateTime dateTime_6_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_6_ngay_toi * 1000);
    day_6_ngay_toi = dateTime_6_ngay_toi.day;
    month_6_ngay_toi = dateTime_6_ngay_toi.month;

    //thong số của 7 ngày tới
    nhiet_do_7_ngay_toi = result[36];
    nhiet_do_7_ngay_toi_max = result[37];
    nhiet_do_7_ngay_toi_min = result[38];
    dt_7_ngay_toi = result[39];
    icon_7_ngay_toi = result[40];

    if (icon_7_ngay_toi == 1) {
      kieu_icon_7_ngay_toi = 'assets/images/rain.png';
    } else if (icon_7_ngay_toi == 2) {
      kieu_icon_7_ngay_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_7_ngay_toi = 'assets/images/clearsky.png';
    }

    int maso_time_7_ngay_toi = dt_7_ngay_toi.toInt();
    DateTime dateTime_7_ngay_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_7_ngay_toi * 1000);
    day_7_ngay_toi = dateTime_7_ngay_toi.day;
    month_7_ngay_toi = dateTime_7_ngay_toi.month;

    //thông số của 1 giờ tới
    nhiet_do_1_gio_toi = result[41];
    dt_1_gio_toi = result[42];
    icon_1_gio_toi = result[43];

    if (icon_1_gio_toi == 1) {
      kieu_icon_1_gio_toi = 'assets/images/rain.png';
    } else if (icon_1_gio_toi == 2) {
      kieu_icon_1_gio_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_1_gio_toi = 'assets/images/clearsky.png';
    }

    int maso_time_1_gio_toi = dt_1_gio_toi.toInt();
    DateTime dateTime_1_gio_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_1_gio_toi * 1000);
    hour_1_gio_toi = dateTime_1_gio_toi.hour;
    minute_1_gio_toi = dateTime_1_gio_toi.minute;

    //thông số của 2 giờ tới
    nhiet_do_2_gio_toi = result[44];
    dt_2_gio_toi = result[45];
    icon_2_gio_toi = result[46];

    if (icon_2_gio_toi == 1) {
      kieu_icon_2_gio_toi = 'assets/images/rain.png';
    } else if (icon_2_gio_toi == 2) {
      kieu_icon_2_gio_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_2_gio_toi = 'assets/images/clearsky.png';
    }

    int maso_time_2_gio_toi = dt_2_gio_toi.toInt();
    DateTime dateTime_2_gio_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_2_gio_toi * 1000);
    hour_2_gio_toi = dateTime_2_gio_toi.hour;
    minute_2_gio_toi = dateTime_2_gio_toi.minute;

    //thông số của 3 giờ tới
    nhiet_do_3_gio_toi = result[47];
    dt_3_gio_toi = result[48];
    icon_3_gio_toi = result[49];

    if (icon_3_gio_toi == 1) {
      kieu_icon_3_gio_toi = 'assets/images/rain.png';
    } else if (icon_3_gio_toi == 2) {
      kieu_icon_3_gio_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_3_gio_toi = 'assets/images/clearsky.png';
    }

    int maso_time_3_gio_toi = dt_3_gio_toi.toInt();
    DateTime dateTime_3_gio_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_3_gio_toi * 1000);
    hour_3_gio_toi = dateTime_3_gio_toi.hour;
    minute_3_gio_toi = dateTime_3_gio_toi.minute;

    //thông số của 4 giờ tới
    nhiet_do_4_gio_toi = result[50];
    dt_4_gio_toi = result[51];
    icon_4_gio_toi = result[52];

    if (icon_4_gio_toi == 1) {
      kieu_icon_4_gio_toi = 'assets/images/rain.png';
    } else if (icon_4_gio_toi == 2) {
      kieu_icon_4_gio_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_4_gio_toi = 'assets/images/clearsky.png';
    }

    int maso_time_4_gio_toi = dt_4_gio_toi.toInt();
    DateTime dateTime_4_gio_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_4_gio_toi * 1000);
    hour_4_gio_toi = dateTime_4_gio_toi.hour;
    minute_4_gio_toi = dateTime_4_gio_toi.minute;

    //thông số của 5 giờ tới
    nhiet_do_5_gio_toi = result[53];
    dt_5_gio_toi = result[54];
    icon_5_gio_toi = result[55];

    if (icon_5_gio_toi == 1) {
      kieu_icon_5_gio_toi = 'assets/images/rain.png';
    } else if (icon_5_gio_toi == 2) {
      kieu_icon_5_gio_toi = 'assets/images/cloud.png';
    } else {
      kieu_icon_5_gio_toi = 'assets/images/clearsky.png';
    }

    int maso_time_5_gio_toi = dt_5_gio_toi.toInt();
    DateTime dateTime_5_gio_toi =
        DateTime.fromMillisecondsSinceEpoch(maso_time_5_gio_toi * 1000);
    hour_5_gio_toi = dateTime_5_gio_toi.hour;
    minute_5_gio_toi = dateTime_5_gio_toi.minute;
  }

  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    bool isInWishlist = wishlistProvider.wishlist.contains(diachi);
    return Scaffold(
      body: ListView(
        controller: _scrollController, // Thêm controller vào ListView
        children: [
          AppBarWidget(),

          //Pesquisa
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          diachi = _textEditingController.text;
                        });
                        solieu();
                        //print("Từ khóa: $diachi");
                      },
                      child: Icon(
                        CupertinoIcons.search,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            hintText:
                                "Địa điểm mà bạn muốn xem dự báo thời tiết? $diachi",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Stack(
              children: [
                // Nhietdochung Box
                Nhietdochung(
                  nhiet_do_hien_tai: nhiet_do_hien_tai,
                  nhiet_do_cam_nhan: nhiet_do_cam_nhan,
                  do_am: do_am,
                  tamnhinxa: tamnhinxa,
                  uvi: uvi,
                  wind_speed: wind_speed,
                  diachi: diachi,
                  kieu_icon: kieu_icon,
                  ngay: day_now,
                  thang: month_now,
                  nam: year_now,
                  gio: hour_now,
                  phut: minute_now,
                ),

                // Heart Icon on top-right corner
                Positioned(
                  right: 10, // Adjust to place the heart correctly
                  top: 30, // Adjust to place the heart correctly
                  child: IconButton(
                    onPressed: () {
                      _toggleWishlist(diachi); // Extract to a separate function
                    },
                    icon: Icon(
                      isInWishlist
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart, // Toggle icon
                      color: isInWishlist
                          ? Colors.red
                          : Colors.grey, // Toggle color based on state
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              //Categorias
              "Vài Giờ tới",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Vaigiotoi(
            nhiet_do_1_gio_toi: nhiet_do_1_gio_toi,
            hour_1_gio_toi: hour_1_gio_toi,
            minute_1_gio_toi: minute_1_gio_toi,
            kieu_icon_1_gio_toi: kieu_icon_1_gio_toi,
            nhiet_do_2_gio_toi: nhiet_do_2_gio_toi,
            hour_2_gio_toi: hour_2_gio_toi,
            minute_2_gio_toi: minute_2_gio_toi,
            kieu_icon_2_gio_toi: kieu_icon_2_gio_toi,
            nhiet_do_3_gio_toi: nhiet_do_3_gio_toi,
            hour_3_gio_toi: hour_3_gio_toi,
            minute_3_gio_toi: minute_3_gio_toi,
            kieu_icon_3_gio_toi: kieu_icon_3_gio_toi,
            nhiet_do_4_gio_toi: nhiet_do_4_gio_toi,
            hour_4_gio_toi: hour_4_gio_toi,
            minute_4_gio_toi: minute_4_gio_toi,
            kieu_icon_4_gio_toi: kieu_icon_4_gio_toi,
            nhiet_do_5_gio_toi: nhiet_do_5_gio_toi,
            hour_5_gio_toi: hour_5_gio_toi,
            minute_5_gio_toi: minute_5_gio_toi,
            kieu_icon_5_gio_toi: kieu_icon_5_gio_toi,
          ),

          Padding(
            padding: EdgeInsets.only(top: 0, left: 10),
            child: Text(
              //Categorias
              "Vài ngày tới",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Vaingaytoi(
            nhiet_do_1_ngay_toi: nhiet_do_1_ngay_toi,
            nhiet_do_1_ngay_toi_max: nhiet_do_1_ngay_toi_max,
            nhiet_do_1_ngay_toi_min: nhiet_do_1_ngay_toi_min,
            day_1_ngay_toi: day_1_ngay_toi,
            month_1_ngay_toi: month_1_ngay_toi,
            kieu_icon_1_ngay_toi: kieu_icon_1_ngay_toi,
            nhiet_do_2_ngay_toi: nhiet_do_2_ngay_toi,
            nhiet_do_2_ngay_toi_max: nhiet_do_2_ngay_toi_max,
            nhiet_do_2_ngay_toi_min: nhiet_do_2_ngay_toi_min,
            day_2_ngay_toi: day_2_ngay_toi,
            month_2_ngay_toi: month_2_ngay_toi,
            kieu_icon_2_ngay_toi: kieu_icon_2_ngay_toi,
            nhiet_do_3_ngay_toi: nhiet_do_3_ngay_toi,
            nhiet_do_3_ngay_toi_max: nhiet_do_3_ngay_toi_max,
            nhiet_do_3_ngay_toi_min: nhiet_do_3_ngay_toi_min,
            day_3_ngay_toi: day_3_ngay_toi,
            month_3_ngay_toi: month_3_ngay_toi,
            kieu_icon_3_ngay_toi: kieu_icon_3_ngay_toi,
            nhiet_do_4_ngay_toi: nhiet_do_4_ngay_toi,
            nhiet_do_4_ngay_toi_max: nhiet_do_4_ngay_toi_max,
            nhiet_do_4_ngay_toi_min: nhiet_do_4_ngay_toi_min,
            day_4_ngay_toi: day_4_ngay_toi,
            month_4_ngay_toi: month_4_ngay_toi,
            kieu_icon_4_ngay_toi: kieu_icon_4_ngay_toi,
            nhiet_do_5_ngay_toi: nhiet_do_5_ngay_toi,
            nhiet_do_5_ngay_toi_max: nhiet_do_5_ngay_toi_max,
            nhiet_do_5_ngay_toi_min: nhiet_do_5_ngay_toi_min,
            day_5_ngay_toi: day_5_ngay_toi,
            month_5_ngay_toi: month_5_ngay_toi,
            kieu_icon_5_ngay_toi: kieu_icon_5_ngay_toi,
            nhiet_do_6_ngay_toi: nhiet_do_6_ngay_toi,
            nhiet_do_6_ngay_toi_max: nhiet_do_6_ngay_toi_max,
            nhiet_do_6_ngay_toi_min: nhiet_do_6_ngay_toi_min,
            day_6_ngay_toi: day_6_ngay_toi,
            month_6_ngay_toi: month_6_ngay_toi,
            kieu_icon_6_ngay_toi: kieu_icon_6_ngay_toi,
            nhiet_do_7_ngay_toi: nhiet_do_7_ngay_toi,
            nhiet_do_7_ngay_toi_max: nhiet_do_7_ngay_toi_max,
            nhiet_do_7_ngay_toi_min: nhiet_do_7_ngay_toi_min,
            day_7_ngay_toi: day_7_ngay_toi,
            month_7_ngay_toi: month_7_ngay_toi,
            kieu_icon_7_ngay_toi: kieu_icon_7_ngay_toi,
          )
        ],
      ),
      //Gaveta
      drawer: DrawerWidget(
        wishlist: wishlistProvider.wishlist,
        temperatures: wishlistProvider.temperatures,
        feelsLikeTemps: wishlistProvider.feelsLikeTemps,
        humidities: wishlistProvider.humidities,
        days: wishlistProvider.days,
        months: wishlistProvider.months,
        years: wishlistProvider.years,
        hours: wishlistProvider.hours,
        minutes: wishlistProvider.minutes,
        // icons: wishlistProvider.icons,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0.0,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        child: Icon(
          CupertinoIcons.capslock,
          size: 28,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
        //mini: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              12), // Điều chỉnh giá trị để thay đổi hình dáng
        ),
      ),
    );
  }
}
