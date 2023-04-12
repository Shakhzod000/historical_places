class AppConts {}

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
