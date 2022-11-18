import 'package:weatherapp/core/models/daily_api_model/cloud_model.dart';
import 'package:weatherapp/core/models/daily_api_model/sys.dart';
import 'package:weatherapp/core/models/daily_api_model/weather_model.dart';
import 'package:weatherapp/core/models/daily_api_model/wind_model.dart';

import 'main_model.dart';

class CurrentForecast{
  int dt;
  String dt_txt;
  Weather weather;
  Main main;
  num visibility;
  Wind wind;
  Clouds clouds;
  Sys sys;
  String name;

  CurrentForecast({
    required this.dt,
    required this.dt_txt,
    required this.main,
    required this.name,
    required this.clouds,
    required this.sys,
    required this.visibility,
    required this.weather,
    required this.wind
});

  factory CurrentForecast.fromJson(Map<String,dynamic> json){

    Weather weather=Weather.fromJson((json["weather"][0]));
    Main main= Main.fromJson(json['main']);
    num visibility=json['visibility'];
    Wind wind= Wind.fromJson(json["wind"]);
    Clouds clouds= Clouds.fromJson(json['clouds']);
    Sys sys=Sys.fromJson(json['sys']);
    String name=json["name"]??"";
    int dt=json['dt']??"";
    String dt_txt=json["dt_txt"]??"fg";

    return CurrentForecast(main: main, name: name, clouds: clouds, sys: sys, visibility: visibility, weather: weather, wind: wind,dt: dt, dt_txt: dt_txt,);

  }




}