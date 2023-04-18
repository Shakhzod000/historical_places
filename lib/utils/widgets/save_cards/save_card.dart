import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaveCard extends StatelessWidget {
  final String title;
  final String subtitile;
  final String image;
  const SaveCard(
      {required this.image,
      required this.subtitile,
      required this.title,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8.w, right: 8.w, bottom: 10.h),
      height: 100.h,
      width: 375.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0).r,
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0).r,
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 16.h, left: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitile,
                    style: TextStyle(
                        fontSize: 12.sp, color: const Color(0xFF8e8e93)),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
                splashRadius: 10,
                iconSize: 27.sp,
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark,
                  color: Color(0xFF0a84ff),
                )),
          ),
          SizedBox(width: 5.w)
        ],
      ),
    );
  }
}
