import 'package:examingapp/home/killjoy.dart';
import 'package:examingapp/utilits/app_assets.dart';
import 'package:examingapp/utilits/app_colors.dart';
import 'package:examingapp/utilits/app_style.dart';
import 'package:flutter/material.dart';

class Agents extends StatelessWidget {
  const Agents({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => KillJoy())),
              child: Container(
                width: 200,
                height: 450,
                decoration: BoxDecoration(
                  color: AppColors.cardChrctr3Color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 110,
                      left: 10,
                      right: 10,
                      child: Image.asset(
                        AppAssets.crctr3,
                        height: 400,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text('', style: AppStyle.titleTextChrctr),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => KillJoy())),
              child: Container(
                width: 200,
                height: 450,
                decoration: BoxDecoration(
                  color: AppColors.cardChrctr2Color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 110,
                      left: 10,
                      right: 10,
                      child: Image.asset(
                        AppAssets.crctr2,
                        height: 400,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text('GEKKO', style: AppStyle.titleTextChrctr),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => KillJoy())),
              child: Container(
                width: 200,
                height: 450,
                decoration: BoxDecoration(
                  color: AppColors.cardChrctr1Color,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 110,
                      left: 10,
                      right: 10,
                      child: Image.asset(
                        AppAssets.crctr1,
                        height: 400,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text('KAYO', style: AppStyle.titleTextChrctr),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
