import 'package:flutter/material.dart';
import 'package:manga_toon/const/colors.dart';
// import 'package:manager/screens/settingScreen.dart';

class CustomTopBar extends StatelessWidget {
  const CustomTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 20, right: 20, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.search, size: 30, color: AppColor.placeholder,),
                    Text("Tim kiem", style: TextStyle(color: AppColor.placeholder,fontSize: 16),),
                    Icon(Icons.mic_none_outlined, size: 30, color: AppColor.placeholder,),
                  ],
                ),
              ),
            ),
            Icon(Icons.notifications_outlined, size: 30, color: AppColor.placeholder,),
            Container(
              height: 50,
              width: 50,
              child: CircleAvatar(
                radius: 48, // Image radius
                backgroundImage: NetworkImage('https://picsum.photos/50/50'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
