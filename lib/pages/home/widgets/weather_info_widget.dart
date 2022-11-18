import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/core/constants/colors.dart';
import 'package:weatherapp/core/models/h_d_model/hd_forecast_new.dart';
import 'package:weatherapp/core/widgets/text_widget.dart';

import '../../../core/constants/mediaquares.dart';
import 'package:weatherapp/core/models/h_d_model/hourly_forecast_model.dart';
import 'package:weatherapp/core/models/h_d_model/daily_forecast_model.dart';





class weather_info_widget extends StatelessWidget {
   List<Daily> data;
   weather_info_widget({required this.data,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: m_h(context)*0.3,
      width: m_w(context),
      child:  ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Container(
            margin: const EdgeInsets.only(right: 12).r,
            padding: const EdgeInsets.symmetric(vertical: 20).r,
            width: m_w(context)*0.17,
            height: m_h(context)*0.07,
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(50).r,
                color: AppColors.C_48319D.withOpacity(0.2),
                border: Border.all(color: AppColors.C_E0D9FF)

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text_widget("${data[index].dt}",fontsize: 16),
                SizedBox(
                  width: m_w(context)*0.13,
                  height: m_w(context)*0.13,
                  child: Image.network("http://openweathermap.org/img/w/${data[index].weather.icon}.png"),

                ),
                text_widget("${data[index].temp.temp.round()}°")
              ],
            ),
          );
        },
        itemCount: data.length,
      ),
    );

  }
}
