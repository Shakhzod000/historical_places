import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConts {
  static const Size designSize = Size(375, 812);
}

extension ScreenDevice on BuildContext {
  get initScreenSize {
    ScreenUtil.init(this, designSize: AppConts.designSize);
  }
}

enum AppPageRoutesName {
  mainView('/main_view'),
  homeView('/home_view'),
  regionView('/region_view'),
  saveView('/save_view'),
  searchView('/search_view'),
  settingView('/setting_view');

  final String route;
  const AppPageRoutesName(this.route);
}
