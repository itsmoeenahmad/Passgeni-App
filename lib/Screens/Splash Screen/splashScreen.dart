import 'package:flutter/material.dart';
import 'package:passgeni/Constans/App%20Colors/appColors.dart';
import 'package:passgeni/Constans/Reusable%20Widgets/text.dart';
import 'package:passgeni/Screens/Main%20Screen/mainScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appColors.bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.33,
              ),
              SizedBox(
                height: height * 0.1,
                width: width * 0.55,
                // color: Colors.green,
                child:  const Image(image: AssetImage('assets/images/PassGeni white Logo.png'),)
              ),
              SizedBox(
                height: height * 0.09,
              ),
              Align(
                  alignment: Alignment.center,
                  child: text(
                      data:
                          '     Welcome to PassGeni -\nYour AI Password Generator',
                      fs: 20,
                      textColor: appColors.text1Color,
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                height: height * 0.055,
                width: width * 0.45,
                decoration: BoxDecoration(
                    //color: Colors.white,
                    border: Border.all(
                        color: appColors.iconsColor, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    SizedBox(
                      width: width * 0.04,
                    ),
                    text(
                        data: 'powered By:',
                        fs: 7,
                        textColor: appColors.iconsColor,
                        fw: FontWeight.w700),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    SizedBox(
                      height: height * 0.03,
                      width: width * 0.2,
                      // color: Colors.white12,
                      child: const Align(
                          alignment: Alignment.topLeft,
                          child:  Image(image: AssetImage('assets/images/Openai Logo.png'))
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.12,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const mainScreen()));
                },
                child: Container(
                  height: height * 0.049,
                  width: width * 0.53,
                  decoration: BoxDecoration(
                      color: appColors.text1Color,
                    // color: Colors.red,
                      borderRadius: BorderRadius.circular(40)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        text(
                            data: "Let's Generate",
                            fs: 14,
                            textColor: appColors.bgColor,
                            fw: FontWeight.w400),
                        SizedBox(
                          height: height * 0.03,
                          width: width * 0.07,
                          child: const Image(image: AssetImage('assets/icons/arrow_outward.png'))
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
