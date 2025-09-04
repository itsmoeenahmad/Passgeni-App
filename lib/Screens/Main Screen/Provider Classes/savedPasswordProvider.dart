import 'package:flutter/material.dart';
import 'package:passgeni/Constans/App%20Colors/appColors.dart';
import 'package:provider/provider.dart';
import '../../../Constans/Reusable Widgets/text.dart';
import 'loadingProviderClass.dart';

class savedPasswordProviderClass extends ChangeNotifier {
  String passwordIs = 'tape-goes-product-report';

  void savedPassword(context, String newPassword) {
    passwordIs = newPassword;
    Provider.of<loadingProviderClass>(context, listen: false).changeCheck(false);
    notifyListeners();
    Future.delayed(const Duration(seconds: 2), () {


      bool containsSymbol = newPassword.contains(RegExp(r'[_!@#%^&*+><?/-]'));
      bool containsNumber = newPassword.contains(RegExp(r'[0-9]'));


      if (containsNumber && containsSymbol && passwordIs.length > 30) {
        print('Recommended');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 2),
          content: text(
              data: 'This Password is Recommended',
              fs: 18,
              textColor: appColors.bgColor,
              fw: FontWeight.w600),
          backgroundColor: appColors.iconsColor,
        ));
      }
    });
  }
}
