import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/save/save_controller.dart';
import 'package:historical_places/utils/app_const/app_const.dart';
import 'package:historical_places/utils/widgets/save_cards/save_card.dart';

class SaveView extends GetView<SaveController> {
  const SaveView({super.key});

  @override
  Widget build(BuildContext context) {
    context.initScreenSize;
    return Scaffold(
        backgroundColor: const Color(0xFFf2f2f7),
        appBar: AppBar(
          toolbarHeight: 65.h,
          backgroundColor: const Color(0xFF386bf6),
          centerTitle: true,
          title: Text(
            'Saved adreeses',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 647.h,
              width: 375.w,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 28.h),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const SaveCard(
                      title: 'Minor masjidi',
                      subtitile: 'Toshkent, Uzbekistan',
                      image: 'assets/images/minor_masjidi.jpg',
                    );
                  }),
            )
          ],
        ));
  }
}
