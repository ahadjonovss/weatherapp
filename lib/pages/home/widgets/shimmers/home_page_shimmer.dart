import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/constants/mediaquares.dart';

class home_page_shimmer extends StatefulWidget {
  const home_page_shimmer({Key? key}) : super(key: key);

  @override
  State<home_page_shimmer> createState() => _home_page_shimmerState();
}

class _home_page_shimmerState extends State<home_page_shimmer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: m_w(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Shimmer.fromColors(
              child: Container(
                height: 12,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white70
                ),
              ),
              baseColor: Colors.white70,
              highlightColor: Colors.white),
          Shimmer.fromColors(
              child: Container(
                height: 12,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white70
                ),
              ),
              baseColor: Colors.white70,
              highlightColor: Colors.white),
          Shimmer.fromColors(
              child: Container(
                height: 12,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white70
                ),
              ),
              baseColor: Colors.white70,
              highlightColor: Colors.white),
        ],
      ),
    );
  }
}
