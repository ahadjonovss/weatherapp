import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:weatherapp/core/constants/icons.dart';
import 'package:weatherapp/core/constants/image.dart';
import 'package:weatherapp/core/constants/mediaquares.dart';
import 'package:weatherapp/core/models/daily_api_model/general_model.dart';
import 'package:weatherapp/core/routes/routes.dart';
import 'package:weatherapp/core/widgets/text_widget.dart';
import 'package:weatherapp/pages/home/widgets/bottom_sheet_widget.dart';
import 'package:weatherapp/pages/home/widgets/shimmers/home_page_shimmer.dart';
import 'package:weatherapp/pages/home/widgets/weather_info_widget.dart';
import 'package:weatherapp/service/daily_forecast_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: m_h(context),
        width: m_w(context),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.home_bg),
                fit: BoxFit.cover
            )
        ),
        child: Stack(
          children: [
            const Positioned(
              bottom: 70,
              child: bottom_sheet_widget(),
            ), //Bottomsheet
            Positioned(
                bottom: -30,
                child: Container(
                  width: m_w(context),
                  height: m_h(context)*0.2,
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  decoration: const  BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.navigationbar),
                          fit: BoxFit.fitWidth
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppIcons.map),
                      Padding(
                          padding: const EdgeInsets.all(36).r,
                          child: Image.asset(AppIcons.add)),
                      InkWell(
                          onTap: ()=>Navigator.pushNamed(context, RouteName.search),
                          child: SvgPicture.asset(AppIcons.menu)),
                    ],
                  ),
                )),
            FutureBuilder(
              future: getDailyForecast(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  CurrentForecast data=snapshot.data!;
                  return Positioned(
                    top: 120,
                    child: SizedBox(
                      width: m_w(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          text_widget(data.name,
                              fontsize: 34.sp
                          ),
                          text_widget("${data.main.temp}??",fontsize: 80.sp,ftw: FontWeight.w400),
                          text_widget(data.weather.description,clr: Colors.white.withOpacity(0.8),fontsize: 20.sp)
                        ],
                      ),
                    ),
                  );
                }
                if(snapshot.connectionState==ConnectionState.waiting)
                  return Positioned(
                  top: 120,
                  child: home_page_shimmer(),
                );

                return Container();
              },
            ), //top
          ],
        ),
      )
    );
  }
}


