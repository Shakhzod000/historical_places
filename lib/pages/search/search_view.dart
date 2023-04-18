import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/search/search_controller.dart';
import 'package:historical_places/utils/app_const/app_const.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    context.initScreenSize;
    return Scaffold(
         backgroundColor: const Color(0xFFf2f2f7),
        appBar: AppBar(
          toolbarHeight: 65.h,
          backgroundColor: const Color(0xFF409cff),
          centerTitle: true,
          flexibleSpace: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Container(
              height: double.infinity,
              width: 375.w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF3867d5),
                    Color(0xFF81c7f5),
                  ])),
            ),
          ),
          title: Row(
            children: [
              SizedBox(
                height: 30.h,
                width: 275.w,
                child: CupertinoTextField(
                  clearButtonMode: OverlayVisibilityMode.editing,
                  cursorColor: const Color(0xFF386bf6),
                  style: TextStyle(
                      fontSize: 15.sp, color: const Color(0xFF3a3a3c)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0.r),
                      color: Colors.white),
                  padding: EdgeInsets.only(left: 10.w, top: 6.h),
                  placeholder: 'Search',
                  placeholderStyle: TextStyle(
                      fontSize: 12.sp, color: const Color(0xFF808080)),
                ),
              ),
              SizedBox(width: 20.w),
              IconButton(
                  splashRadius: 25.r,
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.search))
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 15.h),
            SizedBox(
              height: 100.h,
              width: 375.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text(
                      'Registon maydoni',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text(
                      'Samarqand',
                      style: TextStyle(
                          fontSize: 13.sp, color: const Color(0xFF8e8e93)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 10.w, right: 10.w),
                    child: const Divider(
                      thickness: 1,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
