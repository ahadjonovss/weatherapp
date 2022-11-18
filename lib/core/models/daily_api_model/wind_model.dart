class Wind {
  num speed;
  num deg;

  Wind({
    required this.deg,
    required this.speed,
  });

  factory Wind.fromJson(Map<String,dynamic> json){
    return Wind(deg: json['deg']??-1 , speed: json['speed']??-1);
  }

}
