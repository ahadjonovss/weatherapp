import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image.dart';
import '../../../../core/constants/mediaquares.dart';


class SearchPageShimmer extends StatefulWidget {
  const SearchPageShimmer({Key? key}) : super(key: key);

  @override
  State<SearchPageShimmer> createState() => _SearchPageShimmerState();
}

class _SearchPageShimmerState extends State<SearchPageShimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal:m_w(context)*0.03,vertical: m_w(context)*0.09),
        decoration:   const BoxDecoration(
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
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
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
                              child: Shimmer.fromColors(
                              baseColor: Colors.white70,

                              highlightColor: Colors.white,
                              child: Container(width: 70.w,height: 70.h,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                borderRadius: BorderRadius.circular(20)
                              ),))),
                          Positioned(
                              right: 0,
                              child: Shimmer.fromColors(
                                  baseColor: Colors.white70,

                                  highlightColor: Colors.white,
                                  child: Container(width: 100.2,height: 100.h,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50)
                                    ),))),
                          Positioned(
                              top: 100.sp,
                              left: 12.sp,
                              child: Shimmer.fromColors(
                                  baseColor: Colors.white70,

                                  highlightColor: Colors.white,
                                  child: Container(width: 120.w,height: 20.h,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4)
                                    ),))),
                              Positioned(
                            bottom: 24.sp,
                            left: 12.sp,
                            child:Shimmer.fromColors(
                                baseColor: Colors.white70,

                                highlightColor: Colors.white,
                                child: Container(width: 150.w,height: 24.h,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(4)
                                  ),))),
                          Positioned(
                              bottom: 24.sp,
                              right: 20.sp,
                              child: Shimmer.fromColors(
                                  baseColor: Colors.white70,

                                  highlightColor: Colors.white,
                                  child: Container(width: 80.w,height: 24.h,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(4)
                                    ),)))

                        ],
                      ),
                    );
                  },)
            )
          ],
        ),
      )
    );
  }
}
