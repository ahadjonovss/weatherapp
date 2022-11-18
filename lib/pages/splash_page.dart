import 'package:flutter/material.dart';
import 'package:weatherapp/core/constants/image.dart';
import 'package:weatherapp/core/routes/routes.dart';

import '../core/constants/mediaquares.dart';
import '../core/widgets/text_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.pushNamedAndRemoveUntil(context, RouteName.home, (route) => false));
    return Scaffold(
      body: Container(
        height: m_h(context),
        width: m_w(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.bg),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: m_h(context)*0.32,),
              Container(
                height: m_h(context)*0.2,
                width: m_w(context)*0.5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.logo),
                    fit: BoxFit.fitHeight
                  )
                ),
              ),
               text_widget("Weather APP",fontsize: 28)],
          ),
        ),
      ),
    );
  }
}
