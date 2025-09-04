import 'package:flutter/material.dart';
import 'package:passgeni/Constans/App%20Colors/appColors.dart';
import 'package:passgeni/Constans/Reusable%20Widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';


class contactUsScreen extends StatefulWidget {
  const contactUsScreen({super.key});

  @override
  State<contactUsScreen> createState() => _contactUsScreenState();
}

class _contactUsScreenState extends State<contactUsScreen> {


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appColors.bgColor,
      appBar: AppBar(
        backgroundColor: appColors.bgColor,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 25,
            color: appColors.iconsColor,
          )
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text(data: 'Contact Us', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w800),
              SizedBox(
                height: height*0.002,
              ),
              text(data: "We're here to help you.", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w800),
              SizedBox(
                height: height*0.015,
              ),
              InkWell(
                onTap: (){
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'support@passgeni.online',
                    );

                    launchUrl(emailLaunchUri);
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
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                  'assets/icons/mail icon.png'),
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
                            data: 'support@passgeni.online',
                            fs: 14.5,
                            textColor: const Color(0xff002B2B),
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
    );
  }
}
