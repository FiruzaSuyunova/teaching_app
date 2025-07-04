import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  Future<void> loadSavedLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString('locale') ?? 'en';
    _locale = Locale(code);
    notifyListeners();
  }

  Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale.languageCode);
    _locale = locale;
    notifyListeners();
  }
}
