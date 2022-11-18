import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/core/constants/colors.dart';
import 'package:weatherapp/core/models/h_d_model/hd_forecast_new.dart';
import 'package:weatherapp/core/widgets/text_widget.dart';
import 'package:weatherapp/utils/icontolottie.dart';

import '../../../core/constants/mediaquares.dart';






class weather_info_widget extends StatelessWidget {
  bool isHourly;
   List data;
   weather_info_widget({required this.data,this.isHourly=false,Key? key}) : super(key: key);

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
                isHourly?
                text_widget("${DateFormat.j().format(DateTime.fromMillisecondsSinceEpoch(data[index].dt*1000))}",fontsize: 16):
                text_widget("${DateFormat.E().format(DateTime.fromMillisecondsSinceEpoch(data[index].dt*1000))}",fontsize: 16),
                SizedBox(
                  width: m_w(context)*0.13,
                  height: m_w(context)*0.13,
                  child: Lottie.asset(getLottie(data[index].weather.icon))),
                isHourly?
                text_widget("${data[index].temp.round()}°"):
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
