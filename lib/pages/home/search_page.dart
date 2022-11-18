import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/core/constants/colors.dart';
import 'package:weatherapp/core/constants/image.dart';
import 'package:weatherapp/core/constants/lotties.dart';
import 'package:weatherapp/core/constants/mediaquares.dart';
import 'package:weatherapp/core/models/h_d_model/hd_forecast_new.dart';
import 'package:weatherapp/pages/home/widgets/weather_info_city.dart';
import 'package:weatherapp/service/hd_forecast_service.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getHDForecast(),
        builder: (context, snapshot) {
          HdForecastNew? data=snapshot.data;
          if(snapshot.hasData){
            return Container(
              padding: EdgeInsets.symmetric(horizontal:m_w(context)*0.03,vertical: m_w(context)*0.09),
              decoration:  const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        AppColors.C_2E335A,
                        AppColors.C_1C1B33
                      ]
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      Text("Weather",style: TextStyle(color: Colors.white,fontSize: 28.sp),)
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return weather_info_city(day:data!.daily[index]);
                        },)
                  )
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
