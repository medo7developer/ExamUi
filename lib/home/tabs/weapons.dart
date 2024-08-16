import 'package:examingapp/utilits/app_assets.dart';
import 'package:flutter/material.dart';

class Weapons extends StatelessWidget {
  const Weapons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset(AppAssets.odin),
            Image.asset(AppAssets.vandal),
            Image.asset(AppAssets.ares),
            Image.asset(AppAssets.phantom),
          ],
        ),
      ),
    );
  }
}
