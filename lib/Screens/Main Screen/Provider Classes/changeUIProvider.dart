import 'package:flutter/cupertino.dart';

class changeUIProviderClass extends ChangeNotifier
{
  bool check = false;


  void change()
  {
    check=!check;
    notifyListeners();
  }
}