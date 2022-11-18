import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text text_widget(String text,
    {num fontsize=18,FontWeight ftw=FontWeight.w600,Color clr=Colors.white}){
  return Text(text,style: TextStyle(
    fontSize: fontsize.toDouble().sp,
    fontWeight: ftw,
    color: clr
  ),);
}