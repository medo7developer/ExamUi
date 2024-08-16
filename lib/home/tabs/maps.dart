import 'package:examingapp/utilits/app_assets.dart';
import 'package:flutter/material.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Image.asset(AppAssets.cardImage1)
        ),
        SizedBox(height: 15,),
        Expanded(
            child: Image.asset(AppAssets.cardImage2)
        ),
        SizedBox(height: 15,),
        Expanded(
            child: Image.asset(AppAssets.cardImage3)
        ),
      ],
    );
  }
}
