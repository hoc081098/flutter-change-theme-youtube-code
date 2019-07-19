
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

//This file is automatically generated. DO NOT EDIT, all your changes would be lost.

class S implements WidgetsLocalizations {
  const S();

  static const GeneratedLocalizationsDelegate delegate =
      const GeneratedLocalizationsDelegate();

  static S of(BuildContext context) =>
      Localizations.of<S>(context, WidgetsLocalizations);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  String get change_theme_failure => "Change theme failure";
  String get change_theme_success => "Change theme successfully";
  String get dark_theme => "Dark theme";
  String get light_theme => "Light theme";
  String change_theme_failure_cause_by(String error) => "Change theme failure cause by error: $error";
  String current_language_is(String langName) => "Current language is $langName";
  String current_theme_is(String themeTitle) => "Current theme is $themeTitle";
  String get change_language_success=>"Change locale successfully";
  String get change_language_failure => "Change locale failure";
  String change_language_failure_cause_by(String error) => "Change locale failure cause by error: $error";
}

class vi extends S {
  const vi();

   @override
  TextDirection get textDirection => TextDirection.ltr;

  @override
  String get light_theme => "Chủ đề sáng";
  @override
  String get change_theme_success => "Đổi chủ đề thành công";
  @override
  String get change_theme_failure => "Đổi chủ đề thất bại";
  @override
  String get dark_theme => "Chủ đề tối";
  @override
  String current_language_is(String langName) => "Ngôn ngữ hiện tại là $langName";
  @override
  String current_theme_is(String themeTitle) => "Chủ đề hiện tại là $themeTitle";
  @override
  String change_theme_failure_cause_by(String error) => "Đổi chủ đề thất bại gây ra bởi lỗi: $error";
  @override
  String get change_language_success=>"Đổi ngôn ngữ thành công";
  @override
  String get change_language_failure => "Đổi ngôn ngữ thất bại";
  @override
  String change_language_failure_cause_by(String error) => "Đổi ngôn ngữ thất bại gây ra bởi lỗi: $error";
}

class en extends S {
  const en();
}


class GeneratedLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[

      const Locale("vi", ""),
      const Locale("en", ""),

    ];
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      final Locale languageLocale = new Locale(locale.languageCode, "");
      if (supported.contains(locale))
        return locale;
      else if (supported.contains(languageLocale))
        return languageLocale;
      else {
        final Locale fallbackLocale = fallback ?? supported.first;
        return fallbackLocale;
      }
    };
  }

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    final String lang = getLang(locale);
    switch (lang) {

      case "vi":
        return new SynchronousFuture<WidgetsLocalizations>(const vi());
      case "en":
        return new SynchronousFuture<WidgetsLocalizations>(const en());

      default:
        return new SynchronousFuture<WidgetsLocalizations>(const S());
    }
  }

  @override
  bool isSupported(Locale locale) => supportedLocales.contains(locale);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

String getLang(Locale l) => l.countryCode != null && l.countryCode.isEmpty
    ? l.languageCode
    : l.toString();
