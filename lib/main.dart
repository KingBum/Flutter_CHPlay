import 'package:manga_toon/screens/splashScreen.dart';

import 'package:flutter/material.dart';
import './const/colors.dart';
import './screens/bookScreen.dart';
import './screens/gameScreen.dart';
import './screens/settingScreen.dart';
import './screens/applScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Metropolis",
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.backgrbtn,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.backgrbtn,
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: AppColor.placeholder,
            fontSize: 16
          ),
        ),
      ),
      home: ApplScreen(),
      routes: {
        BookScreen.routeName: (context) => BookScreen(),
        GameScreen.routeName: (context) => GameScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
        ApplScreen.routeName: (context) => ApplScreen(),
      },
    );
  }
}