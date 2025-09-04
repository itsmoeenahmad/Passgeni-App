import 'package:flutter/foundation.dart';

class loadingProviderClass extends ChangeNotifier
{
  bool check = false;


  void changeCheck(bool newBool)
  {
    check=newBool;
    notifyListeners();
  }
}