import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/core/models/h_d_model/hd_forecast_new.dart';
import 'package:weatherapp/utils/icontolottie.dart';

import '../../../core/constants/image.dart';
import '../../../core/constants/lotties.dart';
import '../../../core/constants/mediaquares.dart';
import '../../../core/widgets/text_widget.dart';

class weather_info_city extends StatelessWidget {
  Daily day;
   weather_info_city({ required this.day,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: m_w(context)*0.1),
      height: m_w(context)*0.5,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.rectangle),
              fit: BoxFit.cover

          )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 12.sp,
            top: 20.sp,
            child: Text("${day.temp.temp.toInt()}°",style: TextStyle(color: Colors.white,fontSize: 72.sp)),
          ),
          Positioned(
              right: 0,
              child: Lottie.asset(getLottie(day.weather.icon),height: m_w(context)*0.4)),
          Positioned(
              top: 100.sp,
              left: 20.sp,
              child: Text("H:24  L:18",style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 18.sp),)),
          Positioned(
            bottom: 24.sp,
            left: 20.sp,
            child:Text("jfhsjfs",style: TextStyle(color: Colors.white,fontSize: 24.sp),),
          ),
          Positioned(
              bottom: 24.sp,
              right: 20.sp,
              child: text_widget("${DateFormat.MMMEd().format(DateTime.fromMillisecondsSinceEpoch(day.dt*1000))}",fontsize: 16),)


        ],
      ),
    );
  }
}
