import 'package:flutter/material.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/changeUIProvider.dart';
import 'package:passgeni/Screens/Menu%20Screen/Privacy%20Screen/privacyScreen.dart';
import 'package:passgeni/Screens/Menu%20Screen/Terms%20&%20Conditions%20Screen/termsAndConditionsScreen.dart';
import 'package:provider/provider.dart';

import '../../Constans/App Colors/appColors.dart';
import '../../Constans/Reusable Widgets/text.dart';
import 'About Screen/aboutScreen.dart';
import 'Contact Us Screen/contactUsScreen.dart';
import 'FAQ Screen/faqScreen.dart';

class menuScreen extends StatefulWidget {
  const menuScreen({super.key});

  @override
  State<menuScreen> createState() => _menuScreenState();
}

class _menuScreenState extends State<menuScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Consumer<changeUIProviderClass>(
      builder: (BuildContext context, changeUIProviderClass providerClass,
          Widget? child) {
        return Container(
            height: height * 0.86,
            width: double.infinity,
            decoration: BoxDecoration(
                color: appColors.bgColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                        onTap: () {
                          providerClass.change();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 25,
                          color: appColors.iconsColor,
                        )),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  text(
                      data: 'Menu',
                      fs: 16,
                      textColor: appColors.text1Color,
                      fw: FontWeight.w800),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  Container(
                    height: height * 0.52,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          const Color(0xff027373).withOpacity(0.8),
                          const Color(0xff027373).withOpacity(0.6),
                          const Color(0xff027373).withOpacity(0.5),
                        ])),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.05,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const aboutScreen()));
                            },
                            child: Container(
                              height: height * 0.062,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF).withOpacity(0.55),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.053,
                                    width: width * 0.13,
                                    decoration: BoxDecoration(
                                        color: appColors.bgColor,
                                        shape: BoxShape.circle
                                        // borderRadius: BorderRadius.circular(40)
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        height: height * 0.07,
                                        width: width * 0.09,
                                        // color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                              'assets/icons/info icon.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.06,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.62,
                                    alignment: Alignment.centerLeft,
                                    // color: Colors.red,
                                    child: text(
                                        data: 'Information',
                                        fs: 14.5,
                                        textColor: appColors.bgColor,
                                        fw: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const faqScreen()));
                            },
                            child: Container(
                              height: height * 0.062,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF).withOpacity(0.55),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.053,
                                    width: width * 0.13,
                                    decoration: BoxDecoration(
                                        color: appColors.bgColor,
                                        shape: BoxShape.circle
                                        // borderRadius: BorderRadius.circular(40)
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        height: height * 0.07,
                                        width: width * 0.09,
                                        // color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                              'assets/icons/FAQ Icon.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.06,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.62,
                                    alignment: Alignment.centerLeft,
                                    // color: Colors.red,
                                    child: text(
                                        data: 'Frequently Asked Questions',
                                        fs: 14.5,
                                        textColor: appColors.bgColor,
                                        fw: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Container(
                            height: height * 0.062,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF).withOpacity(0.55),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: height * 0.053,
                                  width: width * 0.13,
                                  decoration: BoxDecoration(
                                      color: appColors.bgColor,
                                      shape: BoxShape.circle,
                                      // borderRadius: BorderRadius.circular(40)
                                    ),
                                  child: Center(
                                    child: SizedBox(
                                      height: height * 0.07,
                                      width: width * 0.09,
                                      // color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Image.asset(
                                            'assets/icons/thumb_up Icon.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.06,
                                ),
                                Container(
                                  height: height * 0.07,
                                  width: width * 0.62,
                                  alignment: Alignment.centerLeft,
                                  // color: Colors.red,
                                  child: text(
                                      data: 'Rate Us',
                                      fs: 14.5,
                                      textColor: appColors.bgColor,
                                      fw: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const contactUsScreen()));
                            },
                            child: Container(
                              height: height * 0.062,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF).withOpacity(0.55),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height * 0.053,
                                    width: width * 0.13,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: appColors.bgColor,
                                        // borderRadius: BorderRadius.circular(40)
                                      ),
                                    child: Center(
                                      child: Container(
                                        height: height * 0.07,
                                        width: width * 0.09,
                                        decoration: const BoxDecoration(
                                            // color: Colors.white,
                                            ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                              'assets/icons/contact icon.png'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.06,
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.62,
                                    alignment: Alignment.centerLeft,
                                    // color: Colors.red,
                                    child: text(
                                        data: 'Contact Us',
                                        fs: 14.5,
                                        textColor: appColors.bgColor,
                                        fw: FontWeight.w700),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const privacyScreen()));
                        },
                        child: text(
                            data: 'Privacy Policy',
                            fs: 12,
                            textColor: appColors.iconsColor,
                            fw: FontWeight.w500),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        width: 1.0,
                        height: 13.0,
                        color: appColors.iconsColor,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const termsAndConditionsScreen()));
                        },
                        child: text(
                            data: 'Terms & Condition',
                            fs: 12,
                            textColor: appColors.iconsColor,
                            fw: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
}
