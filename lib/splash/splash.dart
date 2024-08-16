import 'package:examingapp/home/home.dart';
import 'package:examingapp/utilits/app_assets.dart';
import 'package:examingapp/utilits/app_colors.dart';
import 'package:examingapp/utilits/app_style.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  static const routeName = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(child: Image.asset(AppAssets.logoIcon)),
            ),
            Text('VALORANT',
                textAlign: TextAlign.center, style: AppStyle.titleTextStyle)
          ],
        ),
      ),
    );
  }
}
