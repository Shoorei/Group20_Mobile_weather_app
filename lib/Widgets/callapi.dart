import 'package:dio/dio.dart';

class Request {
  Future<List<double>> getHttp(double vi_do, double kinh_do) async {
    var headers = {
      'Accept': '*/*',
      'Accept-Language':
          'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5',
      'Connection': 'keep-alive',
      'Cookie':
          'stick-footer-panel=true; signed_in=khiemdaica2002; units=metric; october_session=eyJpdiI6Ik9KTURBdGVUWkJObjBZeU5temIrNnc9PSIsInZhbHVlIjoic2lNNmNQK0hcL1Z4cGNQY1REQ3RaejlCRWp4MTdCUjhTYUxkbUVZTjdyQ281cm1BSCttYlpuRWpUZk8rcjhnalwvMmgreUR4Y3ZOQ0Z2K3hiRXFKS3BtNkplY3g0UUNCMG9JV3dsMGxWRTYwQ2F4WitrcVc4QWpOQTFnRnJOQ2c2VSIsIm1hYyI6IjJlMThhNTA5OWQyN2IyMTRkZDllZjliM2ZlNjBhZWJlNTcyMWEwMDBhOTQxNGE2ZTIxZTMyYTMwMWYwOWJiZDkifQ%3D%3D; cityid=1581130',
      'Referer': 'https://openweathermap.org/city/1581130',
      'Sec-Fetch-Dest': 'empty',
      'Sec-Fetch-Mode': 'cors',
      'Sec-Fetch-Site': 'same-origin',
      'User-Agent':
          'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36',
      'sec-ch-ua':
          '"Google Chrome";v="123", "Not:A-Brand";v="8", "Chromium";v="123"',
      'sec-ch-ua-mobile': '?0',
      'sec-ch-ua-platform': '"Windows"'
    };

    Dio dio = Dio();
    Response response = await dio.request(
      'https://openweathermap.org/data/2.5/onecall?lat=$vi_do&lon=$kinh_do&unitss=metric&appid=439d4b804bc8187953eb36d2a8c26a02',
      options: Options(
        method: 'GET',
        headers: headers,
      ),
    );

    // chung
    var nhiet_do_hien_tai = response.data['current']['temp'];
    var nhiet_do_cam_nhan = response.data['current']['feels_like'];
    var do_am = response.data['current']['humidity'];
    var tamnhinxa = response.data['current']['visibility'];
    var dt = response.data['current']['dt'];
    var uvi = response.data['current']['uvi'];
    var wind_speed = response.data['current']['wind_speed'];
    var weather = response.data['current']['weather'][0]['main'];

    double icon = 0;
    if (weather == 'Rain') {
      icon = icon + 1;
    } else if (weather == 'Clouds') {
      icon = icon + 2;
    } else {
      icon = icon + 3;
    }

    // theo ngày
    var nhiet_do_1_ngay_toi = response.data['daily'][1]['temp']['day'];
    var nhiet_do_1_ngay_toi_max = response.data['daily'][1]['temp']['max'];
    var nhiet_do_1_ngay_toi_min = response.data['daily'][1]['temp']['min'];
    var dt_1_ngay_toi = response.data['daily'][1]['dt'];
    var weather_1_ngay_toi = response.data['daily'][1]['weather'][0]['main'];

    double icon_1_ngay_toi = 0;
    if (weather_1_ngay_toi == 'Rain') {
      icon_1_ngay_toi = icon_1_ngay_toi + 1;
    } else if (weather_1_ngay_toi == 'Clouds') {
      icon_1_ngay_toi = icon_1_ngay_toi + 2;
    } else {
      icon_1_ngay_toi = icon_1_ngay_toi + 3;
    }

    var nhiet_do_2_ngay_toi = response.data['daily'][2]['temp']['day'];
    var nhiet_do_2_ngay_toi_max = response.data['daily'][2]['temp']['max'];
    var nhiet_do_2_ngay_toi_min = response.data['daily'][2]['temp']['min'];
    var dt_2_ngay_toi = response.data['daily'][2]['dt'];
    var weather_2_ngay_toi = response.data['daily'][2]['weather'][0]['main'];

    double icon_2_ngay_toi = 0;
    if (weather_2_ngay_toi == 'Rain') {
      icon_2_ngay_toi = icon_2_ngay_toi + 1;
    } else if (weather_2_ngay_toi == 'Clouds') {
      icon_2_ngay_toi = icon_2_ngay_toi + 2;
    } else {
      icon_2_ngay_toi = icon_2_ngay_toi + 3;
    }

    var nhiet_do_3_ngay_toi = response.data['daily'][3]['temp']['day'];
    var nhiet_do_3_ngay_toi_max = response.data['daily'][3]['temp']['max'];
    var nhiet_do_3_ngay_toi_min = response.data['daily'][3]['temp']['min'];
    var dt_3_ngay_toi = response.data['daily'][3]['dt'];
    var weather_3_ngay_toi = response.data['daily'][3]['weather'][0]['main'];

    double icon_3_ngay_toi = 0;
    if (weather_3_ngay_toi == 'Rain') {
      icon_3_ngay_toi = icon_3_ngay_toi + 1;
    } else if (weather_3_ngay_toi == 'Clouds') {
      icon_3_ngay_toi = icon_3_ngay_toi + 2;
    } else {
      icon_3_ngay_toi = icon_3_ngay_toi + 3;
    }

    var nhiet_do_4_ngay_toi = response.data['daily'][4]['temp']['day'];
    var nhiet_do_4_ngay_toi_max = response.data['daily'][4]['temp']['max'];
    var nhiet_do_4_ngay_toi_min = response.data['daily'][4]['temp']['min'];
    var dt_4_ngay_toi = response.data['daily'][4]['dt'];
    var weather_4_ngay_toi = response.data['daily'][4]['weather'][0]['main'];

    double icon_4_ngay_toi = 0;
    if (weather_4_ngay_toi == 'Rain') {
      icon_4_ngay_toi = icon_4_ngay_toi + 1;
    } else if (weather_4_ngay_toi == 'Clouds') {
      icon_4_ngay_toi = icon_4_ngay_toi + 2;
    } else {
      icon_4_ngay_toi = icon_4_ngay_toi + 3;
    }

    var nhiet_do_5_ngay_toi = response.data['daily'][5]['temp']['day'];
    var nhiet_do_5_ngay_toi_max = response.data['daily'][5]['temp']['max'];
    var nhiet_do_5_ngay_toi_min = response.data['daily'][5]['temp']['min'];
    var dt_5_ngay_toi = response.data['daily'][5]['dt'];
    var weather_5_ngay_toi = response.data['daily'][5]['weather'][0]['main'];

    double icon_5_ngay_toi = 0;
    if (weather_5_ngay_toi == 'Rain') {
      icon_5_ngay_toi = icon_5_ngay_toi + 1;
    } else if (weather_5_ngay_toi == 'Clouds') {
      icon_5_ngay_toi = icon_5_ngay_toi + 2;
    } else {
      icon_5_ngay_toi = icon_5_ngay_toi + 3;
    }

    var nhiet_do_6_ngay_toi = response.data['daily'][6]['temp']['day'];
    var nhiet_do_6_ngay_toi_max = response.data['daily'][6]['temp']['max'];
    var nhiet_do_6_ngay_toi_min = response.data['daily'][6]['temp']['min'];
    var dt_6_ngay_toi = response.data['daily'][6]['dt'];
    var weather_6_ngay_toi = response.data['daily'][6]['weather'][0]['main'];

    double icon_6_ngay_toi = 0;
    if (weather_6_ngay_toi == 'Rain') {
      icon_6_ngay_toi = icon_6_ngay_toi + 1;
    } else if (weather_6_ngay_toi == 'Clouds') {
      icon_6_ngay_toi = icon_6_ngay_toi + 2;
    } else {
      icon_6_ngay_toi = icon_6_ngay_toi + 3;
    }

    var nhiet_do_7_ngay_toi = response.data['daily'][7]['temp']['day'];
    var nhiet_do_7_ngay_toi_max = response.data['daily'][7]['temp']['max'];
    var nhiet_do_7_ngay_toi_min = response.data['daily'][7]['temp']['min'];
    var dt_7_ngay_toi = response.data['daily'][7]['dt'];
    var weather_7_ngay_toi = response.data['daily'][7]['weather'][0]['main'];

    double icon_7_ngay_toi = 0;
    if (weather_7_ngay_toi == 'Rain') {
      icon_7_ngay_toi = icon_7_ngay_toi + 1;
    } else if (weather_7_ngay_toi == 'Clouds') {
      icon_7_ngay_toi = icon_7_ngay_toi + 2;
    } else {
      icon_7_ngay_toi = icon_7_ngay_toi + 3;
    }

    // theo giờ
    var nhiet_do_1_gio_toi = response.data['hourly'][1]['temp'];
    var dt_1_goi_toi = response.data['hourly'][1]['dt'];
    var weather_1_gio_toi = response.data['hourly'][1]['weather'][0]['main'];

    double icon_1_gio_toi = 0;
    if (weather_1_gio_toi == 'Rain') {
      icon_1_gio_toi = icon_1_gio_toi + 1;
    } else if (weather_1_gio_toi == 'Clouds') {
      icon_1_gio_toi = icon_1_gio_toi + 2;
    } else {
      icon_1_gio_toi = icon_1_gio_toi + 3;
    }

    var nhiet_do_2_gio_toi = response.data['hourly'][2]['temp'];
    var dt_2_goi_toi = response.data['hourly'][2]['dt'];
    var weather_2_gio_toi = response.data['hourly'][2]['weather'][0]['main'];

    double icon_2_gio_toi = 0;
    if (weather_2_gio_toi == 'Rain') {
      icon_2_gio_toi = icon_2_gio_toi + 1;
    } else if (weather_2_gio_toi == 'Clouds') {
      icon_2_gio_toi = icon_2_gio_toi + 2;
    } else {
      icon_2_gio_toi = icon_2_gio_toi + 3;
    }

    var nhiet_do_3_gio_toi = response.data['hourly'][3]['temp'];
    var dt_3_goi_toi = response.data['hourly'][3]['dt'];
    var weather_3_gio_toi = response.data['hourly'][3]['weather'][0]['main'];

    double icon_3_gio_toi = 0;
    if (weather_3_gio_toi == 'Rain') {
      icon_3_gio_toi = icon_3_gio_toi + 1;
    } else if (weather_3_gio_toi == 'Clouds') {
      icon_3_gio_toi = icon_3_gio_toi + 2;
    } else {
      icon_3_gio_toi = icon_3_gio_toi + 3;
    }

    var nhiet_do_4_gio_toi = response.data['hourly'][4]['temp'];
    var dt_4_goi_toi = response.data['hourly'][4]['dt'];
    var weather_4_gio_toi = response.data['hourly'][4]['weather'][0]['main'];

    double icon_4_gio_toi = 0;
    if (weather_4_gio_toi == 'Rain') {
      icon_4_gio_toi = icon_4_gio_toi + 1;
    } else if (weather_4_gio_toi == 'Clouds') {
      icon_4_gio_toi = icon_4_gio_toi + 2;
    } else {
      icon_4_gio_toi = icon_4_gio_toi + 3;
    }

    var nhiet_do_5_gio_toi = response.data['hourly'][5]['temp'];
    var dt_5_goi_toi = response.data['hourly'][5]['dt'];
    var weather_5_gio_toi = response.data['hourly'][5]['weather'][0]['main'];

    double icon_5_gio_toi = 0;
    if (weather_5_gio_toi == 'Rain') {
      icon_5_gio_toi = icon_5_gio_toi + 1;
    } else if (weather_5_gio_toi == 'Clouds') {
      icon_5_gio_toi = icon_5_gio_toi + 2;
    } else {
      icon_5_gio_toi = icon_5_gio_toi + 3;
    }

    return [
      nhiet_do_hien_tai,
      nhiet_do_cam_nhan,
      do_am,
      tamnhinxa,
      dt,
      icon,
      nhiet_do_1_ngay_toi,
      nhiet_do_1_ngay_toi_max,
      nhiet_do_1_ngay_toi_min,
      dt_1_ngay_toi,
      icon_1_ngay_toi,
      nhiet_do_2_ngay_toi,
      nhiet_do_2_ngay_toi_max,
      nhiet_do_2_ngay_toi_min,
      dt_2_ngay_toi,
      icon_2_ngay_toi,
      nhiet_do_3_ngay_toi,
      nhiet_do_3_ngay_toi_max,
      nhiet_do_3_ngay_toi_min,
      dt_3_ngay_toi,
      icon_3_ngay_toi,
      nhiet_do_4_ngay_toi,
      nhiet_do_4_ngay_toi_max,
      nhiet_do_4_ngay_toi_min,
      dt_4_ngay_toi,
      icon_4_ngay_toi,
      nhiet_do_5_ngay_toi,
      nhiet_do_5_ngay_toi_max,
      nhiet_do_5_ngay_toi_min,
      dt_5_ngay_toi,
      icon_5_ngay_toi,
      nhiet_do_6_ngay_toi,
      nhiet_do_6_ngay_toi_max,
      nhiet_do_6_ngay_toi_min,
      dt_6_ngay_toi,
      icon_6_ngay_toi,
      nhiet_do_7_ngay_toi,
      nhiet_do_7_ngay_toi_max,
      nhiet_do_7_ngay_toi_min,
      dt_7_ngay_toi,
      icon_7_ngay_toi,
      nhiet_do_1_gio_toi,
      dt_1_goi_toi,
      icon_1_gio_toi,
      nhiet_do_2_gio_toi,
      dt_2_goi_toi,
      icon_2_gio_toi,
      nhiet_do_3_gio_toi,
      dt_3_goi_toi,
      icon_3_gio_toi,
      nhiet_do_4_gio_toi,
      dt_4_goi_toi,
      icon_4_gio_toi,
      nhiet_do_5_gio_toi,
      dt_5_goi_toi,
      icon_5_gio_toi,
      uvi,
      wind_speed,
    ];
  }
}
