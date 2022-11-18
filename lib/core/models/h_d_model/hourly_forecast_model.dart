import 'package:weatherapp/core/models/daily_api_model/cloud_model.dart';
import 'package:weatherapp/core/models/daily_api_model/sys.dart';
import 'package:weatherapp/core/models/daily_api_model/weather_model.dart';
import 'package:weatherapp/core/models/daily_api_model/wind_model.dart';

class HourlyForecast {
  int dt;
  num temp;
  Weather weather;

  HourlyForecast({
    required this.weather,
    required this.dt,
    required this.temp,
  });

  factory HourlyForecast.fromJson(Map<String,dynamic> json){
    int dt=json['dt']??0;
    num temp=json['temp']??0;
    Weather weather=Weather.fromJson(json['weather'][0]);

   return HourlyForecast(weather: weather, dt: dt, temp: temp);
  }
}
