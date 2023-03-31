import 'package:flutter/material.dart';
import 'package:azl_data/datasource/translations/translation_datasource.dart';
class AppLocales {
  static const defaultLanguage =
      AppLanguage(LocaleTexts.selectLanguage, Locale('en', 'US'));
  static const en = AppLanguage(LocaleTexts.en, Locale('en', 'US'));
  static const hi = AppLanguage(LocaleTexts.hi, Locale('hi', 'IN'));

  static const path = 'assets/locales';

  static const List<AppLanguage> languages = [defaultLanguage, en, hi];
}

class AppLanguage {
  final String languageText;
  final Locale language;

  const AppLanguage(this.languageText, this.language);

  @override
  String toString() {
    return languageText;
  }
}
