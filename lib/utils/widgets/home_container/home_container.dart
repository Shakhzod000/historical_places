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
      margin: EdgeInsets.symmetric(horizontal: 8.0.w),
      height: 275.h,
      width: 375.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
              bottom: const Radius.circular(20).r,
              top: const Radius.circular(10).r),
          color: Colors.white),
      child: Column(
        children: [
          Container(
            height: 200.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: const Radius.circular(10).r),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text(
              title,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              subTitle,
              style: TextStyle(fontSize: 12.sp, color: const Color(0xFF8e8e93)),
            ),
            trailing: IconButton(
                iconSize: 30.sp,
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  color: Color(0xFF9db2ce),
                )),
          )
        ],
      ),
    );
  }
}
