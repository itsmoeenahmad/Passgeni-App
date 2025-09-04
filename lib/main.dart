import 'package:flutter/material.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/addNumberProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/capitalizeProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/changeUIProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/loadingProviderClass.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/savedPasswordProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/sliderProviderClass.dart';
import 'package:passgeni/Screens/Splash%20Screen/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> addNumberProviderClass()),
        ChangeNotifierProvider(create: (context)=> capitalizeProviderClass()),
        ChangeNotifierProvider(create: (context)=> changeUIProviderClass()),
        ChangeNotifierProvider(create: (context)=> savedPasswordProviderClass()),
        ChangeNotifierProvider(create: (context)=> sliderProviderClass()),
        ChangeNotifierProvider(create: (context)=> loadingProviderClass()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: splashScreen(),
      ),
    );
  }
}

