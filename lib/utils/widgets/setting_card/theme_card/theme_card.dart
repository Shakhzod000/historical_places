import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeCard extends StatelessWidget {
  final String title;
  final String flag;
  const ThemeCard({required this.title, required this.flag, super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Row(
          children: [
            Image.asset(flag),
            SizedBox(width: 24.w),
            Text(
              title,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        value: false,
        onChanged: (value) {});
  }
}
