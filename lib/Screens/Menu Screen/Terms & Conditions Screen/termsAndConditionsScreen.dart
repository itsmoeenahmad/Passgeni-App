import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Constans/App Colors/appColors.dart';
import '../../../Constans/Reusable Widgets/text.dart';

class termsAndConditionsScreen extends StatelessWidget {
  const termsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appColors.bgColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: appColors.bgColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_outlined,
              size: 25,
              color: appColors.iconsColor,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.065),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: 'Terms & Conditions',
                      fs: 16,
                      textColor: appColors.text1Color,
                      fw: FontWeight.w900)),
              SizedBox(
                height: height * 0.005,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "Effective Date: 8/23/2024",
                      fs: 15,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w800)),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "1. Introduction",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data:
                          "Welcome to Passgeni (“we”, “our”, “us”). These Terms and Conditions govern your use of our password generator tool, whether accessed through our website or mobile application. By using our services, you agree to comply with and be bound by these terms.",
                      fs: 14,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w400)),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "2. Use of the Service",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.008,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 1.5,
                          width: 5,
                          color: Colors.white,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: " Personal Use:",
                                fs: 15,
                                textColor: const Color(0xffF4F4F4),
                                fw: FontWeight.w700)),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: text(
                            data:
                                "Our password generator tool is provided for your personal use only. You may not use the tool for any illegal or unauthorized purpose.",
                            fs: 14,
                            textColor: const Color(0xffF4F4F4),
                            fw: FontWeight.w400)),
                    Row(
                      children: [
                        Container(
                          height: 1.5,
                          width: 5,
                          color: Colors.white,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: " Prohibited Actions:",
                                fs: 15,
                                textColor: const Color(0xffF4F4F4),
                                fw: FontWeight.w700)),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: text(
                            data:
                                "You agree not to misuse the tool, including but not limited to using it to create passwords for unlawful activities, attempting to disrupt the service, or reverse engineering the tool.",
                            fs: 14,
                            textColor: const Color(0xffF4F4F4),
                            fw: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "3. Intellectual Property",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.008,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 1.5,
                          width: 5,
                          color: Colors.white,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: " Ownership:",
                                fs: 15,
                                textColor: const Color(0xffF4F4F4),
                                fw: FontWeight.w700)),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: text(
                            data:
                                "All content and materials provided on our website and app, including the design, text, graphics, and software, are the property of Giant Tech Soutions LLC and are protected by intellectual property laws.",
                            fs: 14,
                            textColor: const Color(0xffF4F4F4),
                            fw: FontWeight.w400)),
                    Row(
                      children: [
                        Container(
                          height: 1.5,
                          width: 5,
                          color: Colors.white,
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: text(
                                data: " License:",
                                fs: 15,
                                textColor: const Color(0xffF4F4F4),
                                fw: FontWeight.w700)),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: text(
                            data:
                                "We grant you a limited, non-exclusive, non-transferable license to use our tool for personal use in accordance with these terms.",
                            fs: 14,
                            textColor: const Color(0xffF4F4F4),
                            fw: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.008,
              ),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "4. Disclaimer of Warranties",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data:
                          "Our password generator tool is provided 'as is' and 'as available' without any warranties of any kind, whether express or implied. We do not guarantee that the tool will meet your requirements or that it will be error-free.",
                      fs: 14,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w400)),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "5. Limitation of Liability",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data:
                          "To the fullest extent permitted by law, “Passgeni” will not be liable for any damages, including direct, indirect, incidental, or consequential damages, arising from your use of the tool or your inability to use it.",
                      fs: 14,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w400)),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "6. Changes to the Service",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data:
                          "We reserve the right to modify or discontinue our password generator tool, either temporarily or permanently, with or without notice.",
                      fs: 14,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w400)),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "7. Governing Law",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data:
                          "These Terms and Conditions are governed by and construed in accordance with the laws of Islamabad,Pakistan. Any disputes arising from these terms or your use of the tool will be subject to the exclusive jurisdiction of the courts in Islamabad,Pakistan.",
                      fs: 14,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w400)),
              SizedBox(
                height: height * 0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data: "8. Contact Us",
                      fs: 16,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w700)),
              SizedBox(
                height: height * 0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(
                      data:
                          "If you have any questions or concerns about these Terms and Conditions, please contact us at:",
                      fs: 14,
                      textColor: const Color(0xffF4F4F4),
                      fw: FontWeight.w400)),
              SizedBox(
                height: height * 0.01,
              ),
              InkWell(
                onTap: () {
                  final Uri emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'support@passgeni.online',
                  );

                  launchUrl(emailLaunchUri);
                },
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'support@passgeni.online',
                    style: GoogleFonts.bricolageGrotesque(
                        color: const Color(0xffF4F4F4),
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                //child: text(data: "support@passgeni.online", fs: 14, textColor: Color(0xffF4F4F4), fw: FontWeight.w800),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: 2,
                width: width * 0.7,
                color: appColors.text2Color,
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
