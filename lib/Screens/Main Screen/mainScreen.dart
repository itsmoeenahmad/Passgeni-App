import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:passgeni/Constans/App%20Colors/appColors.dart';
import 'package:passgeni/Constans/Reusable%20Widgets/showMessage.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/addNumberProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/capitalizeProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/changeUIProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/loadingProviderClass.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/savedPasswordProvider.dart';
import 'package:passgeni/Screens/Main%20Screen/Provider%20Classes/sliderProviderClass.dart';
import 'package:passgeni/Screens/Menu%20Screen/menuScreen.dart';
import 'package:provider/provider.dart';
import '../../Constans/Reusable Widgets/text.dart';
import 'OpenAI Code/aiCode.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {

  //Storing Slider Index Value
  double sliderIndexIs = 0;

  //Controllers
  TextEditingController professionController = TextEditingController();
  TextEditingController separatorController = TextEditingController();

  //Switch buttons
  bool checkIncludeNumbers = false;
  bool checkcapitalize = false;

  //Capitalize Password is
  String? capitalizePasswordIs = '';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appColors.iconsColor,
      body: SafeArea(
        child: Consumer<changeUIProviderClass>(
          builder: (BuildContext context, changeUIProviderClass providerClass,
              Widget? child) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: height * 0.14,
                    width: double.infinity,
                    // color: Colors.red,
                    color: appColors.iconsColor,
                    child: Center(
                      child: SizedBox(
                        height: height * 0.08,
                        width: width * 0.6,
                        // color: Colors.red,
                        child: Image.asset('assets/images/PassGeni Logo.png'),
                      ),
                    ),
                  ),
                  providerClass.check == false
                      ? Container(
                          height: height * 0.86,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: appColors.bgColor,
                              // color: Colors.purple,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16))),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                      onTap: () {
                                        providerClass.change();
                                      },
                                      child: Icon(
                                        Icons.more_vert_sharp,
                                        size: 30,
                                        color: appColors.iconsColor,
                                      )),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                        data:
                                            'Instantly generate the Best Password',
                                        fs: 16,
                                        textColor: appColors.text1Color,
                                        fw: FontWeight.w800),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        text(
                                            data: 'With the ',
                                            fs: 16,
                                            textColor: appColors.text1Color,
                                            fw: FontWeight.w800),
                                        text(
                                            data: 'PassGeni',
                                            fs: 16,
                                            textColor: appColors.iconsColor,
                                            fw: FontWeight.w800),
                                        text(
                                            data: ' online tool',
                                            fs: 16,
                                            textColor: appColors.text1Color,
                                            fw: FontWeight.w800),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                SizedBox(
                                  height: height * 0.5,
                                  width: double.infinity,
                                  // color: Colors.white,
                                  child: Stack(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: height * 0.45,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                gradient:
                                                    LinearGradient(colors: [
                                                  const Color(0xff027373)
                                                      .withOpacity(0.8),
                                                  const Color(0xff027373)
                                                      .withOpacity(0.6),
                                                  const Color(0xff027373)
                                                      .withOpacity(0.5),
                                                ])),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: width * 0.04),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: height * 0.07,
                                                  ),

                                                  //Password is
                                                  Consumer<
                                                      savedPasswordProviderClass>(
                                                    builder:
                                                        (BuildContext context,
                                                            providerClass,
                                                            Widget? child) {
                                                      print(checkcapitalize);
                                                      if (checkcapitalize ==
                                                          true) {
                                                        print('Capitalize');
                                                        print(providerClass
                                                            .passwordIs);

                                                        List<String> parts;
                                                        if (separatorController
                                                            .text.isEmpty) {
                                                          parts = providerClass
                                                              .passwordIs
                                                              .split('-');
                                                        } else {
                                                          parts = providerClass
                                                              .passwordIs
                                                              .split(separatorController
                                                                  .text
                                                                  .toString());
                                                        }

                                                        // Capitalize the first letter of each part
                                                        List<String>
                                                            capitalizedParts =
                                                            parts.map((part) {
                                                          if (part.isEmpty)
                                                            return part;
                                                          return part[0]
                                                                  .toUpperCase() +
                                                              part.substring(1);
                                                        }).toList();

                                                        // Join the parts back together with the dynamic separator
                                                        if (separatorController
                                                            .text.isEmpty) {
                                                          providerClass
                                                                  .passwordIs =
                                                              capitalizedParts
                                                                  .join('-');
                                                        } else {
                                                          providerClass
                                                                  .passwordIs =
                                                              capitalizedParts.join(
                                                                  separatorController
                                                                      .text
                                                                      .toString());
                                                        }

                                                        print(providerClass
                                                            .passwordIs);
                                                      } else {
                                                        print('Not Capitalize');
                                                      }
                                                      return Container(
                                                        height: height * 0.0615,
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                                // color: Colors.black,
                                                                color: const Color(
                                                                        0xffFFFFFF)
                                                                    .withOpacity(
                                                                        0.55),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Consumer<
                                                                loadingProviderClass>(
                                                              builder: (BuildContext
                                                                      context,
                                                                  loadingProviderClass
                                                                      ProviderClass,
                                                                  Widget?
                                                                      child) {
                                                                print(providerClass
                                                                    .passwordIs);
                                                                return Container(
                                                                  height:
                                                                      height *
                                                                          0.07,
                                                                  width: width *
                                                                      0.72,
                                                                  // color: Colors.red,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: width *
                                                                            0.05),
                                                                    child: ProviderClass.check ==
                                                                            true
                                                                        ? LoadingAnimationWidget.staggeredDotsWave(
                                                                            color: appColors
                                                                                .bgColor,
                                                                            size:
                                                                                30)
                                                                        : text(
                                                                            data:
                                                                                providerClass.passwordIs,
                                                                            fs: 15,
                                                                            textColor: const Color(0xff027373),
                                                                            fw: FontWeight.w700),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  width * 0.01,
                                                            ),
                                                            InkWell(
                                                              onTap: () async {
                                                                await Clipboard.setData(ClipboardData(
                                                                        text: providerClass
                                                                            .passwordIs))
                                                                    .then(
                                                                        (success) {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                          SnackBar(
                                                                    duration: const Duration(
                                                                        seconds:
                                                                            2),
                                                                    content: text(
                                                                        data:
                                                                            'Password Copied',
                                                                        fs: 18,
                                                                        textColor:
                                                                            appColors
                                                                                .bgColor,
                                                                        fw: FontWeight
                                                                            .w600),
                                                                    backgroundColor:
                                                                        appColors
                                                                            .iconsColor,
                                                                  ));
                                                                }).onError((error,
                                                                        another) {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                          SnackBar(
                                                                    content: text(
                                                                        data:
                                                                            '$error',
                                                                        fs: 18,
                                                                        textColor:
                                                                            Colors
                                                                                .white,
                                                                        fw: FontWeight
                                                                            .w600),
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red,
                                                                  ));
                                                                });
                                                              },
                                                              child: Container(
                                                                height: height *
                                                                    0.053,
                                                                width: width *
                                                                    0.13,
                                                                decoration: BoxDecoration(
                                                                    color: appColors
                                                                        .bgColor,
                                                                    shape: BoxShape
                                                                        .circle),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          7),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/icons/Copy icon.png',
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),

                                                  Consumer<sliderProviderClass>(
                                                    builder:
                                                        (BuildContext context,
                                                            sliderProviderClass
                                                                providerClass,
                                                            Widget? child) {
                                                      return Slider(
                                                        value: providerClass
                                                            .selectedIndex
                                                            .toDouble(),
                                                        min: 0,
                                                        max: providerClass
                                                                .values.length -
                                                            1,
                                                        divisions: providerClass
                                                                .values.length -
                                                            1,
                                                        label: providerClass
                                                            .values[providerClass
                                                                .selectedIndex]
                                                            .toString(),
                                                        onChanged:
                                                            (double value) {
                                                              sliderIndexIs=value;
                                                          providerClass
                                                              .changeIndex(
                                                                  value);
                                                        },
                                                        activeColor:
                                                            const Color(
                                                                0xff002B2B),
                                                        inactiveColor:
                                                            const Color(
                                                                0xff002B2B),
                                                        thumbColor:
                                                            Colors.white,
                                                      );
                                                    },
                                                  ),

                                                  //Field For Password

                                                  //Profession is
                                                  Container(
                                                    height: height * 0.05,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff027373),
                                                            style: BorderStyle
                                                                .solid,
                                                            width: 1.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: width*0.03,
                                                        ),
                                                        Container(
                                                          height: height * 0.04,
                                                          width: width * 0.78,
                                                          //color: Colors.white,
                                                          child: Center(
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: width *
                                                                          0.03),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                    textSelectionTheme:
                                                                        TextSelectionThemeData(
                                                                            selectionColor:
                                                                                const Color(0xff027373).withOpacity(0.1))),
                                                                child:
                                                                    TextField(
                                                                  controller:
                                                                      professionController,
                                                                  style: GoogleFonts.bricolageGrotesque(
                                                                      fontSize:
                                                                          14,
                                                                      color: const Color(
                                                                          0xffA9D9D0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                  cursorColor:
                                                                      appColors
                                                                          .text2Color,
                                                                  decoration:
                                                                      InputDecoration
                                                                          .collapsed(
                                                                    hintText:
                                                                        'Type Your Profession                   Doctor',
                                                                    hintStyle: GoogleFonts.bricolageGrotesque(
                                                                        fontSize:
                                                                            13,
                                                                        color: const Color(0xffA9D9D0).withOpacity(
                                                                            0.7),
                                                                        fontWeight:
                                                                            FontWeight.w300),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  //Separator Word is
                                                  Container(
                                                    height: height * 0.05,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff027373),
                                                            style: BorderStyle
                                                                .solid,
                                                            width: 1.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: width*0.03,
                                                        ),
                                                        Container(
                                                          height: height * 0.04,
                                                          width: width * 0.78,
                                                          // color: Colors.white,
                                                          child: Center(
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: width *
                                                                          0.03),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                    textSelectionTheme:
                                                                        TextSelectionThemeData(
                                                                            selectionColor:
                                                                                const Color(0xff027373).withOpacity(0.1))),
                                                                child:
                                                                    TextField(
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .text,
                                                                  controller:
                                                                      separatorController,
                                                                  style: GoogleFonts.bricolageGrotesque(
                                                                      fontSize:
                                                                          14,
                                                                      color: const Color(
                                                                          0xffA9D9D0),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                  inputFormatters: [
                                                                    LengthLimitingTextInputFormatter(
                                                                        1), // Limit to one character
                                                                    FilteringTextInputFormatter
                                                                        .allow(
                                                                      RegExp(
                                                                          r'[_!@#%^&*+><?/-]'),
                                                                    ), //
                                                                  ],
                                                                  cursorColor:
                                                                      appColors
                                                                          .text2Color,
                                                                  decoration:
                                                                      InputDecoration
                                                                          .collapsed(
                                                                    hintText:
                                                                        "Type Your Word-Separator          (!@#%^&*+><?/)",
                                                                    hintStyle: GoogleFonts.bricolageGrotesque(
                                                                        fontSize:
                                                                            13,
                                                                        color: const Color(0xffA9D9D0).withOpacity(
                                                                            0.7),
                                                                        fontWeight:
                                                                            FontWeight.w300),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Container(
                                                    height: height * 0.05,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff027373),
                                                            style: BorderStyle
                                                                .solid,
                                                            width: 1.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                            height:
                                                                height * 0.04,
                                                            width: width * 0.5,
                                                            // color: Colors.red,
                                                            child: Center(
                                                                child: text(
                                                                    data:
                                                                        'Add Number                         ',
                                                                    fs: 13,
                                                                    textColor:
                                                                        const Color(
                                                                            0xffA9D9D0),
                                                                    fw: FontWeight
                                                                        .w700))),
                                                        Consumer<
                                                            addNumberProviderClass>(
                                                          builder: (BuildContext
                                                                  context,
                                                              providerClass,
                                                              Widget? child) {
                                                            return SizedBox(
                                                              height:
                                                                  height * 0.04,
                                                              width:
                                                                  width * 0.35,
                                                              // color: Colors.white,
                                                              child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: width *
                                                                        0.14),
                                                                child: Center(
                                                                  child:
                                                                      AdvancedSwitch(
                                                                    activeColor:
                                                                        const Color(
                                                                            0xff027373),
                                                                    inactiveColor:
                                                                        const Color(
                                                                            0xffA9D9D0),
                                                                    height:
                                                                        height *
                                                                            0.039,
                                                                    width: width *
                                                                        0.196,
                                                                    initialValue:
                                                                        providerClass
                                                                            .addNumberCheck,
                                                                    onChanged:
                                                                        (newBool) {
                                                                      checkIncludeNumbers =
                                                                          newBool;
                                                                      providerClass
                                                                          .addNumberChange(
                                                                              newBool);
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.01,
                                                  ),
                                                  Container(
                                                    height: height * 0.05,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff027373),
                                                            style: BorderStyle
                                                                .solid,
                                                            width: 1.5),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                            height:
                                                                height * 0.04,
                                                            width: width * 0.5,
                                                            // color: Colors.red,
                                                            child: Center(
                                                                child: text(
                                                                    data:
                                                                        'Capitalize                               ',
                                                                    fs: 13,
                                                                    textColor:
                                                                        const Color(
                                                                            0xffA9D9D0),
                                                                    fw: FontWeight
                                                                        .w700))),
                                                        Consumer<
                                                            capitalizeProviderClass>(
                                                          builder: (BuildContext
                                                                  context,
                                                              providerClass,
                                                              Widget? child) {
                                                            return SizedBox(
                                                              height:
                                                                  height * 0.04,
                                                              width:
                                                                  width * 0.35,
                                                              // color: Colors.white,
                                                              child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: width *
                                                                        0.14),
                                                                child: Center(
                                                                  child:
                                                                      AdvancedSwitch(
                                                                    activeColor:
                                                                        const Color(
                                                                            0xff027373),
                                                                    inactiveColor:
                                                                        const Color(
                                                                            0xffA9D9D0),
                                                                    height:
                                                                        height *
                                                                            0.039,
                                                                    width: width *
                                                                        0.196,
                                                                    initialValue:
                                                                        providerClass
                                                                            .capitalizeCheck,
                                                                    onChanged:
                                                                        (newBool) {
                                                                      checkcapitalize =
                                                                          newBool;
                                                                      providerClass
                                                                          .addNumberChange(
                                                                              newBool);
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        top: height * 0.02,
                                        left: width * 0.3,
                                        right: width * 0.3,
                                        child: Container(
                                          height: height * 0.06,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff027373),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: width * 0.02,
                                              ),
                                              text(
                                                  data: '  powered By:  ',
                                                  fs: 7,
                                                  textColor:
                                                      appColors.iconsColor,
                                                  fw: FontWeight.w700),
                                              SizedBox(
                                                width: width * 0.01,
                                              ),
                                              SizedBox(
                                                height: height * 0.02,
                                                width: width * 0.15,
                                                // color: Colors.white12,
                                                child: Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Image.asset(
                                                      'assets/images/Openai Logo.png',
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                InkWell(
                                  onTap: () {
                                    print('Profession is ${professionController.text.toString()}');
                                    print('Separator is ${separatorController.text.toString()}');
                                    print('CheckAddNumber is $checkIncludeNumbers');



                                    if(sliderIndexIs==0.0 && professionController.text.isEmpty && separatorController.text.isEmpty)
                                      {
                                        print('1');
                                        generatePassword(
                                            context: context,
                                            profession: '',
                                            separator: '-',
                                            includeNumbers: checkIncludeNumbers);
                                      }
                                    else if(sliderIndexIs==1.0 || sliderIndexIs==2.0)
                                      {
                                        print('2');
                                        if (professionController.text.isEmpty) {
                                          print('3');
                                          //Provider.of<loadingProviderClass>(context, listen: false).changeCheck(true);
                                          showMessage(
                                              context,
                                              'Enter the Profession',
                                              appColors.iconsColor);
                                        } else if (separatorController
                                            .text.isEmpty) {
                                          print('4');
                                          showMessage(
                                              context,
                                              'Enter the Word-Separator',
                                              appColors.iconsColor);
                                        }
                                      }
                                    else {
                                      print('5');
                                      if(professionController.text.isNotEmpty && separatorController.text.isNotEmpty)
                                        {
                                          print('6');
                                          Provider.of<sliderProviderClass>(context,listen: false).changeIndex(1.0);
                                          generatePassword(
                                              context: context,
                                              profession: professionController.text
                                                  .toString(),
                                              separator: separatorController.text
                                                  .toString(),
                                              includeNumbers: checkIncludeNumbers);
                                        }
                                      else if(professionController.text.isNotEmpty && separatorController.text.isNotEmpty && checkcapitalize==true && checkIncludeNumbers==true)
                                        {
                                          print('7');
                                          Provider.of<sliderProviderClass>(context,listen: false).changeIndex(2.0);
                                          generatePassword(
                                              context: context,
                                              profession: professionController.text
                                                  .toString(),
                                              separator: separatorController.text
                                                  .toString(),
                                              includeNumbers: checkIncludeNumbers);
                                        }
                                      else{
                                        print('8');
                                        generatePassword(
                                            context: context,
                                            profession: professionController.text
                                                .toString(),
                                            separator: separatorController.text
                                                .toString(),
                                            includeNumbers: checkIncludeNumbers);
                                      }
                                    }
                                  },
                                  child: Container(
                                    height: height * 0.05,
                                    width: width * 0.6,
                                    decoration: BoxDecoration(
                                        color: appColors.text1Color,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: height * 0.04,
                                            width: width * 0.15,
                                            // color: Colors.black12,
                                            child: Image.asset(
                                                'assets/icons/Generate Icon.png'),
                                          ),
                                          text(
                                              data: "   Generate Password",
                                              fs: 14,
                                              textColor: appColors.bgColor,
                                              fw: FontWeight.w700),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                      : const menuScreen(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
