import 'package:examingapp/home/killjoy.dart';
import 'package:examingapp/home/tabs/agents.dart';
import 'package:examingapp/home/tabs/maps.dart';
import 'package:examingapp/home/tabs/weapons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/tab_manager.dart';
import 'package:examingapp/utilits/app_assets.dart';
import 'package:examingapp/utilits/app_colors.dart';
import 'package:examingapp/utilits/app_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Container(
          color: AppColors.primaryColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(AppAssets.logoIcon),
                        Text('VALORANT', style: AppStyle.titleTextStyle),
                      ],
                    ),
                  ],
                ),
              ),
              Consumer<TabManager>(
                builder: (context, tabManager, child) {
                  return Expanded(
                    child: Column(
                      children: [
                        TabBar(
                          onTap: (index) {
                            tabManager.setIndex(index);
                          },
                          tabs: const [
                            Tab(text: 'AGENTS'),
                            Tab(text: 'MAPS'),
                            Tab(text: 'WEAPONS'),
                          ],
                          indicator: BoxDecoration(
                            color: Color(0xFFE53935),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white,
                          indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: TextStyle(fontFamily: 'valorant'),
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [Agents(), Maps(), Weapons()],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
