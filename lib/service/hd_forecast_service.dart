import 'dart:math';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import '../core/models/h_d_model/hd_forecast_new.dart';

Future<HdForecastNew?> getHDForecast() async {

  List<String> keys=["4a8eaf9ed512f638cdd7a82434895402","139d82d53b7f20c0a44c1bc27377f9ff","4a8eaf9ed512f638cdd7a82434895402"];
  int random=Random().nextInt(2);


  Uri uri= Uri.parse("https://api.openweathermap.org/data/2.5/onecall?lat=41.2646&lon=69.2163&units=metric&exclude=minutely,current&appid=${keys[random].toString()}");

  var response= await http.get(uri);
  if(response.statusCode==200){
    var jsonResponse =
    convert.jsonDecode(response.body) as Map<String, dynamic>;
    return HdForecastNew.fromJson(jsonResponse);
  }
  return null;


}
