class Main {
  num temp;
  num feels_like;
  num temp_min;
  num temp_max;
  num pressure;
  num humidity;

  Main({
    required this.feels_like,
    required this.humidity,
    required this.pressure,
    required this.temp,
    required this.temp_max,
    required this.temp_min,
  });

  factory Main.fromJson(Map<String,dynamic> json){
    return Main(
        feels_like: json["feels_like"]??-1,
        humidity: json["humidity"]??-1,
        pressure: json["pressure"]??-1,
        temp: json["temp"]??-1,
        temp_max: json["temp_max"]??-1,
        temp_min: json["temp_min"]??-1);
  }
}
