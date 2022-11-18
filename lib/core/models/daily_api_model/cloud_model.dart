class Clouds{
  num all;
  Clouds({required this.all});

  factory Clouds.fromJson(Map<String,dynamic> json){

    return Clouds(all: json['all']??"");
  }
}