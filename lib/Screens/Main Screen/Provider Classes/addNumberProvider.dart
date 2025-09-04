import 'package:flutter/widgets.dart';

class addNumberProviderClass extends ChangeNotifier
{
  bool addNumberCheck = false;


  void addNumberChange(bool newBool)
  {
    addNumberCheck=newBool;
    notifyListeners();
  }
}