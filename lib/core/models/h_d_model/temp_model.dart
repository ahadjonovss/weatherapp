class Temp {
  dynamic temp;

  Temp({required this.temp});

  factory Temp.fromJson(Map<String , dynamic> json){

    dynamic day=json['day']??0;
    dynamic min=json['min']??0;
    dynamic max=json['max']??0;
    dynamic night=json['night']??0;
    dynamic eve=json['eve']??0;
    dynamic morn=json['morn']??0;

    dynamic temp=(day+min+max+night+eve+morn)/6;

    return Temp(temp: temp);
  }

}
