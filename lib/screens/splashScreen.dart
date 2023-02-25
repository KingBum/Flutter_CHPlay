import 'dart:async';
import 'package:flutter/material.dart';
import 'package:manga_toon/screens/gameScreen.dart';
import '../utils/helper.dart';
import '../const/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(GameScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        decoration: BoxDecoration(color: AppColor.secondary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Helper.getAssetName("logo_ch.png", "real"),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
