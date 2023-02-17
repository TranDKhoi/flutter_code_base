import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static late SharedPreferences _pref;

  static init() async {
    _pref = await SharedPreferences.getInstance();
  }

  String? getCurrentLang() {
    return _pref.getString("language");
  }

  void setCurrentLang(String currentLang) {
    _pref.setString("language", currentLang);
  }
}
