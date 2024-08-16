import 'dart:io';

import 'package:examingapp/utilits/app_assets.dart';
import 'package:examingapp/utilits/app_colors.dart';
import 'package:examingapp/utilits/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KillJoy extends StatelessWidget {
  const KillJoy({super.key});

  static const String routeName = 'killjoy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},
              icon: Image.asset(AppAssets.displayIcon),
          )
        ],
        title: Text(
          'KillJoy',
          style: AppStyle.titleTextStyle.copyWith(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(AppAssets.background),
                  ),
                  Container(
                    child: Image.asset(AppAssets.chrctrbkground),
                  ),
                ],
              )
            ),
          ),
          Expanded(
            flex: 1,
              child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Description',
                  style: AppStyle.titleTextStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
          )),
          Expanded(
            flex: 5,
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Well-dressed and well-armed, French weapons designer Chamber expels aggressors with deadly precision. He leverages his custom arsenal to hold the line and pick off enemies from afar, with a contingency built for every plan.',
                  style: AppStyle.titleTextStyle.copyWith(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: Text('abilities', style: AppStyle.titleTextStyle.copyWith(color: Colors.white),)
          ),
          Expanded(
            flex: 2,
              child: Row(
            children: [
              Expanded(child: Image.asset(AppAssets.energyIcon)),
              Expanded(child: Image.asset(AppAssets.energyIcon2)),
              Expanded(child: Image.asset(AppAssets.energyIcon3)),
              Expanded(child: Image.asset(AppAssets.energyIcon4)),
            ],
          )
          )
        ],
      ),

    );
  }
}
