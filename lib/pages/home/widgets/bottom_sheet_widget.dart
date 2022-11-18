import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/pages/home/widgets/weather_info_widget.dart';


import '../../../core/constants/colors.dart';
import '../../../core/constants/mediaquares.dart';
import 'package:weatherapp/service/hd_forecast_service.dart';

import '../../../core/models/h_d_model/hd_forecast_new.dart';



class bottom_sheet_widget extends StatefulWidget {
  const bottom_sheet_widget({Key? key}) : super(key: key);

  @override
  State<bottom_sheet_widget> createState() => _bottom_sheet_widgetState();
}

class _bottom_sheet_widgetState extends State<bottom_sheet_widget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getHDForecast(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            HdForecastNew? data=snapshot.data;

            return Container(
              width: m_w(context),
              height: m_h(context)*0.3,
              decoration:  BoxDecoration(
                  border: Border.all(color: AppColors.C_E0D9FF.withOpacity(0.9)),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColors.C_2E335A.withOpacity(0.9),
                        AppColors.C_1C1B33.withOpacity(0.9),
                        AppColors.C_612FAB.withOpacity(0.5),
                      ]
                  )
              ),
              child: Column(
                children: [
                  DefaultTabController(
                      length: 2,
                      child: Column(
                        children:  [
                          const TabBar(
                              indicatorWeight: 1,
                              indicatorColor: AppColors.C_612FAB,
                              labelStyle: TextStyle(
                                  fontSize: 16
                              ),
                              tabs: [
                                Tab(text: "Hourly Forecast",),
                                Tab(text: "Weekly Forecast",),
                              ]),
                          Container(
                            padding: EdgeInsets.all(4).r,
                            width: m_w(context),
                            height: m_h(context)*0.2,
                            child:  TabBarView(
                                children: [
                                  weather_info_widget(data: data!.hourly,isHourly: true),
                                  weather_info_widget(data: data.daily)
                                ]),
                          )
                        ],
                      ))
                ],
              ),
            );
          }

          if(snapshot.hasError){
            return Container(
              child: Center(child: Text(snapshot.error.toString())),
            );
          }

          if(ConnectionState==ConnectionState.waiting){
            return Container(
            );
          }
          return Container();

        },);
  }
}
