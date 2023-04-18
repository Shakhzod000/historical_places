import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/regions/regions_controller.dart';
import 'package:historical_places/utils/app_const/app_const.dart';
import 'package:historical_places/utils/widgets/regions_card/regions_card.dart';

class RegionView extends GetView<RegionsController> {
  const RegionView({super.key});

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
          title: Text(
            'Regions in Uzbekistan',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.help_sharp,
                ))
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 28.h),
            SizedBox(
              height: 620.h,
              width: 375.w,
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return const RegionsCard();
                  }),
            )
          ],
        ));
  }
}
