import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/home/home_controller.dart';
import 'package:historical_places/utils/app_const/app_const.dart';
import 'package:historical_places/utils/widgets/home_container/home_container.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    context.initScreenSize;
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f7),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.r))),
        backgroundColor: const Color(0xFF386bf6),
        toolbarHeight: 115.h,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    splashRadius: 25.sp,
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.search)),
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
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.w, top: 8.h),
              child: Text(
                'Welcome to Uzbekistan',
                style: TextStyle(fontSize: 18.sp),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 375.w,
            height: 590.h,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: 27.h),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 14.5.h),
                        child: const HomeContainer(
                          title: 'Minor masjidi',
                          subTitle: 'Toshkent, Uzbekistan',
                          image: 'assets/images/minor_masjidi.jpg',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50.w),
                        child: const Divider(
                          thickness: 2,
                          color: Color(0xFF386bf6),
                        ),
                      ),
                      SizedBox(
                        height: 14.5.h,
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
