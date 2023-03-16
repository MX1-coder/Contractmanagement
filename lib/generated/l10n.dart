// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: 'The current language',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: 'A word',
      args: [],
    );
  }

  /// `HOME`
  String get home {
    return Intl.message(
      'HOME',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `CONTRACT`
  String get contract {
    return Intl.message(
      'CONTRACT',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `PRODUCT INFO`
  String get productinfo {
    return Intl.message(
      'PRODUCT INFO',
      name: 'productinfo',
      desc: '',
      args: [],
    );
  }

  /// `DOWNLOADS`
  String get downloads {
    return Intl.message(
      'DOWNLOADS',
      name: 'downloads',
      desc: '',
      args: [],
    );
  }

  /// `CONTACT`
  String get contact {
    return Intl.message(
      'CONTACT',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Free Trial`
  String get freetrial {
    return Intl.message(
      'Free Trial',
      name: 'freetrial',
      desc: '',
      args: [],
    );
  }

  /// `Why Contract`
  String get whycontract {
    return Intl.message(
      'Why Contract',
      name: 'whycontract',
      desc: '',
      args: [],
    );
  }

  /// `Contract Benefits`
  String get contractbenefits {
    return Intl.message(
      'Contract Benefits',
      name: 'contractbenefits',
      desc: '',
      args: [],
    );
  }

  /// `Cost`
  String get cost {
    return Intl.message(
      'Cost',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `Our Comprehensive`
  String get ourcomprehensive {
    return Intl.message(
      'Our Comprehensive',
      name: 'ourcomprehensive',
      desc: '',
      args: [],
    );
  }

  /// `Management`
  String get management {
    return Intl.message(
      'Management',
      name: 'management',
      desc: '',
      args: [],
    );
  }

  /// `Software Helps`
  String get softwarehelps {
    return Intl.message(
      'Software Helps',
      name: 'softwarehelps',
      desc: '',
      args: [],
    );
  }

  /// `Helps`
  String get help {
    return Intl.message(
      'Helps',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get readmore {
    return Intl.message(
      'Read More',
      name: 'readmore',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
