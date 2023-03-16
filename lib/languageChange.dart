import 'package:flutter/cupertino.dart';

class LanguageChangeProvider with ChangeNotifier{
  Locale _current=new Locale("en");

  Locale get current => _current;

  void ChangeLocal(String _locale){
    this._current=new Locale(_locale);
    notifyListeners();
  }
}