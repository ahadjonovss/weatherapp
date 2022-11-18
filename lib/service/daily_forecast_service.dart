import 'package:dio/dio.dart';
import 'package:weatherapp/core/models/daily_api_model/general_model.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<CurrentForecast?> getDailyForecast() async {

Uri uri= Uri.parse("http://api.openweathermap.org/data/2.5/weather?q=Tashkent&appid=a1f83f9e42b65d5f86f56c4b1ebd6a94&units=metric");

var response= await http.get(uri);
if(response.statusCode==200){
  var jsonResponse =
  convert.jsonDecode(response.body) as Map<String, dynamic>;
  return CurrentForecast.fromJson(jsonResponse);
}
return null;


}
