import 'package:flutter/cupertino.dart';

class sliderProviderClass extends ChangeNotifier
{

  final List<String> values = ['Weak', 'Strong', 'Very Strong'];
  int selectedIndex = 0;


  void changeIndex(double value)
  {
    selectedIndex = value.toInt();
    print("Selected Index is: $selectedIndex ");
    notifyListeners();
  }

}
