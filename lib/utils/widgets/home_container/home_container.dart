import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  const HomeContainer(
      {required this.image,
      required this.subTitle,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275.h,
      width: 375.w,
      decoration: const BoxDecoration(
          gradient: LinearGradient(tileMode: TileMode.clamp, colors: [
        Color(0xFF409cff),
        Color(0xFF64d2ff),
        Color(0xFF5ac8fa)
      ])),
      child: Column(
        children: [
          Container(
            height: 200.h,
            width: 375.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(fontSize: 12.sp, color: const Color(0xFFe5e5ea)),
            ),
            trailing: IconButton(
                iconSize: 27.sp,
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
