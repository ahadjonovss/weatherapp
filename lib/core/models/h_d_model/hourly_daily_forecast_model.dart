import 'package:weatherapp/core/models/h_d_model/hourly_forecast_model.dart';
import 'package:weatherapp/core/models/h_d_model/daily_forecast_model.dart';


class HDForecast{
  double lat;
  double lon;
  String timezone;
  List<HourlyForecast> hourly;
  List<DailyForecast> daily;

  HDForecast({
    required this.daily,
    required this.hourly,
    required this.lat,
    required this.lon,
    required this.timezone,
});

  factory HDForecast.fromJson(Map<String,dynamic> json){
    double lat=json['lat']??0;
    double lon=json['lon']??0;
    String timezone=json['timezone']??"no data";
    List<HourlyForecast> hourly=json['hourly'].toList().map((e)=> HourlyForecast.fromJson(e)).toList();
    List<DailyForecast> daily=(json['daily'].toList().map((e)=> DailyForecast.fromJson(e))).toList();

    print(hourly);

    return HDForecast(daily: daily, hourly: hourly, lat: lat, lon: lon, timezone: timezone);


  }


}