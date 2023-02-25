import 'package:flutter/material.dart';
import 'package:manga_toon/screens/applScreen.dart';

import '../const/colors.dart';
import '../screens/gameScreen.dart';
import '../screens/bookScreen.dart';
import '../utils/helper.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.game, required this.appl, required this.book}) : super(key: key);
  final bool game;
  final bool appl;
  final bool book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: AppColor.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!game) {
                        Navigator.of(context)
                            .pushReplacementNamed(GameScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        game
                            ? Container(
                          margin: EdgeInsets.only(bottom: 4) ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.backgrbtn ,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4, right: 20, left: 20.0),
                              child: Icon(Icons.sports_esports, size: 30, color: AppColor.main,),
                            ))
                            : Icon(Icons.sports_esports_outlined, size: 30, color: AppColor.main,),
                        Text("Games",
                            style: TextStyle(color: AppColor.main)),
                      ],
                    ),
                  ),GestureDetector(
                    onTap: () {
                      if (!appl) {
                        Navigator.of(context)
                            .pushReplacementNamed(ApplScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        appl
                            ? Container(
                          margin: EdgeInsets.only(bottom: 4) ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.backgrbtn ,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4, right: 20, left: 20.0),
                              child: Icon(Icons.grid_view, size: 30, color: AppColor.main,),
                            ))
                            : Icon(Icons.grid_view_outlined, size: 30, color: AppColor.main,),
                        Text("Ung dung",
                            style: TextStyle(color: AppColor.main)),
                      ],
                    ),
                  ),GestureDetector(
                    onTap: () {
                      if (!book) {
                        Navigator.of(context)
                            .pushReplacementNamed(BookScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        book
                            ? Container(
                          margin: EdgeInsets.only(bottom: 4) ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColor.backgrbtn ,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4, bottom: 4, right: 20, left: 20.0),
                              child: Icon(Icons.import_contacts, size: 30, color: AppColor.main,),
                            ))
                            : Icon(Icons.import_contacts_outlined, size: 30, color: AppColor.main,),
                        Text("Book",
                            style: TextStyle(color: AppColor.main)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
