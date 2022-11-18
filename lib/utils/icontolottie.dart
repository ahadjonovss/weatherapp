import '../core/constants/lotties.dart';


String getLottie (String name){
  switch (name ){
    case "01d" : return Mylottie.d01;
    break;
    case "02d" : return Mylottie.d02;
    break;
    case "03d" : return Mylottie.d03;
    break;
    case "04d" : return Mylottie.d04;
    break;
    case "09d" : return Mylottie.d09;
    break;
    case "11d" : return Mylottie.d11;
    break;
    case "13d" : return Mylottie.d13;
    break;
    case "50d" : return Mylottie.d50;
    break;
    case "01n" : return Mylottie.n01;
    break;
    case "02n" : return Mylottie.n02;
    break;
    case "03n" : return Mylottie.n03;
    break;
    case "04n" : return Mylottie.n04;
    break;
    case "09n" : return Mylottie.n09;
    break;
    case "11n" : return Mylottie.n11;
    break;
    case "13n" : return Mylottie.n13;
    break;
    case "50n" : return Mylottie.n50;
    break;
    default : return Mylottie.d01;

  }

}