class Weather{
  String main;
  String description;
  String icon;

  Weather({
    required this.main,
    required this.icon,
    required this.description
  });

  factory Weather.fromJson(Map<String,dynamic> json){
    return Weather(
        main: json["main"]??"",
        icon: json["icon"]??"",
        description: json["description"]??"");
  }
}

