import 'package:weatherapp/core/models/h_d_model/temp_model.dart';
import 'package:weatherapp/core/models/daily_api_model/weather_model.dart';

class DailyForecast {
  int dt;
  Temp temp;
  Weather weather;

  DailyForecast({
    required this.weather,
    required this.dt,
    required this.temp,
  });

  factory DailyForecast.fromJson(Map<String,dynamic> json){

    dynamic dt=json['dt']??0;
    dynamic temp=Temp.fromJson(json['temp']);
    dynamic weather=Weather.fromJson(json['weather']);
    return DailyForecast(weather: weather, dt: dt, temp: temp);
  }
}
