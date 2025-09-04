import 'package:flutter/widgets.dart';

class capitalizeProviderClass extends ChangeNotifier
{
  bool capitalizeCheck = false;


  void addNumberChange(bool newBool)
  {
    capitalizeCheck=newBool;
    notifyListeners();
  }
}