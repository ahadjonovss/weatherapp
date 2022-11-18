class Sys{
  String country;
  int sunrise;
  int sunset;

  Sys({
    required this.country,
    required this.sunrise,
    required this.sunset
});

  factory Sys.fromJson(Map<String,dynamic> json){

    return Sys(country: json["country"]??"", sunrise: json["sunrise"]??0, sunset: json["sunset"]??0);
  }
}