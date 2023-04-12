
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:historical_places/pages/home/home_binding.dart';
import 'package:historical_places/pages/home/home_view.dart';
import 'package:historical_places/pages/main/main_binding.dart';
import 'package:historical_places/pages/main/main_view.dart';
import 'package:historical_places/pages/save/save_binding.dart';
import 'package:historical_places/pages/save/save_view.dart';
import 'package:historical_places/pages/search/search_binding.dart';
import 'package:historical_places/pages/search/search_view.dart';
import 'package:historical_places/pages/setting/setting_binding.dart';
import 'package:historical_places/pages/setting/setting_view.dart';
import 'package:historical_places/utils/app_const/app_const.dart';

mixin AppRoutes on StatelessWidget{
  
 static final List<GetPage> appPages =[
   GetPage(name: AppPageRoutesName.mainView.route,
    page: ()=> const MainView(),
    binding: MainaBinding()
    ),
      GetPage(name: AppPageRoutesName.homeView.route,
    page: ()=> const HomeView(),
    binding: HomeBinding()
    ),
      GetPage(name: AppPageRoutesName.searchView.route,
    page: ()=> const SearchView(),
    binding: SearchBinding()
    ),
      GetPage(name: AppPageRoutesName.saveView.route,
    page: ()=> const SaveView(),
    binding: SaveBinding()
    ),
      GetPage(name: AppPageRoutesName.settingView.route,
    page: ()=> const SettingView(),
    binding: SettingBinding()
    ),
      
 ];
}