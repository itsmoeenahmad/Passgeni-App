import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:passgeni/Constans/Reusable%20Widgets/text.dart';
import '../../../Constans/App Colors/appColors.dart';

class aboutScreen extends StatefulWidget {
  const aboutScreen({super.key});

  @override
  State<aboutScreen> createState() => _aboutScreenState();
}

class _aboutScreenState extends State<aboutScreen> {

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.065),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: text(data: 'About PassGeni.online', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900)),
              SizedBox(
                height: height*0.02,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Advanced AI-Enhanced Password Security", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w900)),
              SizedBox(
                height: height*0.01,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Experience the PassGeni difference with these exclusive features:", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.009,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: 'AI-Powered Strength :', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900)),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "PassGeni utilises the power of artificial intelligence to craft the Best, Powerful, and Memorable passwords, making them unbreakable.", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.009,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: 'Professionally Personalized :', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900)),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Choose profession, and PassGeni will generate memorable passphrases relevant to your field, ensuring security and ease of use.", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.009,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: 'Zero Data Retention :', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900)),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "PassGeni never stores your passwords, guaranteeing the utmost security for your sensitive information.", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.02,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Your Password, Your Control", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w900)),
              SizedBox(
                height: height*0.005,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "PassGeni enables you to generate passwords that are both easy to remember and secure. Our user-friendly free AI password generator tool combines words with a special character, and you can capitalize words as you prefer. Plus, you can easily add a random 4-digit string to meet specific password requirements.", fs: 15, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "The best part? All automated password generation occurs right in your browser, with no data sent to our servers. With PassGeni AI Password Generator, you completely control your online security.", fs: 15, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.02,
              ),
              Row(
                children: [
                  text(data: 'Join ', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900),
                  text(data: '100 Million + ', fs: 16, textColor: appColors.text2Color, fw: FontWeight.w900),
                  text(data: 'Users Using AI for ', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900),
                ],
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Maximum Password Security - Here's How!", fs: 16, textColor: appColors.text1Color, fw: FontWeight.w800)),
              SizedBox(
                height: height*0.01,
              ),
              CarouselSlider(
                  items: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      color: appColors.text2Color,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child:  Center(
                    child: text(data: "Did you know that 81% of data breaches occur due to weak or reused passwords? Passphrases, like those generated with PassGeni, significantly boost security. They consist of multiple words or a sentence, making them 30 times harder to crack than traditional passwords. You can stay one step ahead of cyber threats.", fs: 11, textColor: appColors.bgColor, fw: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      color: appColors.text2Color,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child:  Center(child: text(data: "I’ve used Passgeni for a few weeks and it has proven time and time again how valuable it is to me.Managing my passwords across my devices is so easy with my subscription.", fs: 11, textColor: appColors.bgColor, fw: FontWeight.w500)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      color: appColors.text2Color,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child:  Center(
                    child: text(data: "Are you among the 60% of people who admit to using the same password across multiple accounts? Managing multiple complex passwords is exhausting. An Artificial Intelligence (AI) password manager provides a solution by crafting strong yet memorable passphrases according to your preferences. Reduce the risk of forgetting or reusing passwords across accounts.", fs: 11, textColor: appColors.bgColor, fw: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 2.0),
                  decoration: BoxDecoration(
                      color: appColors.text2Color,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child:  Center(
                    child: text(data: "Did you know that every 3 in 4 accounts get compromised due to weak passwords every year? AI-driven password generators help you create Smart Passwords Online by consistently generating robust and unique passphrases. Safeguard your online accounts effectively. Don't compromise your online security – stay informed and protected with PassGeni's AI-powered solutions.", fs: 11, textColor: appColors.bgColor, fw: FontWeight.w500),
                  ),
                ),
              ],
                  options: CarouselOptions(
                height: height*0.23,
                viewportFraction: 0.9,
                autoPlay: true
              )),
              SizedBox(
                height: height*0.03,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Advance Business Security with AI-Powered Password Solutions", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w900)),
              SizedBox(
                height: height*0.01,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Statistics reveal that 43% of data breaches target small businesses, with the average data breach cost reaching a staggering 3.86 million Dollars. Weak and reused passwords can lead to unauthorized access to your company's data. This is where AI-powered password managers come into play. AI-powered password Generators like PassGeni create strong and secure passphrases. When you need to log into a site, PassGeni will autofill the login details. Furthermore, PassGeni's AI password strength checker continually assesses and enhances password security. Businesses can safeguard sensitive data by integrating AI-enhanced password protection into their cybersecurity strategy.", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w500)),
              SizedBox(
                height: height*0.005,
              ),
              Align(
        alignment: Alignment.topLeft,
        child: text(data: "It’s also quite hard to remember all those passwords when you need them. That’s why we made PassGeni. PassGeni is a password manager app that works on almost any device to generate secure passwords on the fly. When you need to log into a site, PassGeni will autofill the login details for you. All you need to remember now is one secure password – that unlocks all of the random, strong passwords the built-in password generator created for you.", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w500)),
              SizedBox(
                height: height*0.03,
              ),
              Container(
                height: 2.5,
                width: width*0.8,
                color: appColors.text1Color,
              ),
              SizedBox(
                height: height*0.03,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "I need to generate a memorable, but strong password. Any tips?", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w900)),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "A random password generator is the best way to generate passwords that are both secure and easy to remember. But if you find yourself without access to the Strong Password Generator tool, keep these tips in mind to stay safe online.", fs: 15, textColor: appColors.text1Color, fw: FontWeight.w500)),
              SizedBox(
                height: height*0.05,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: appColors.text2Color,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(data: 'Paraphrase Power', fs: 15, textColor: appColors.bgColor, fw: FontWeight.w900),
                                Icon(Icons.done_outline_rounded,color: appColors.bgColor,size: 30,)
                              ],
                            ),
                            SizedBox(
                              height: height*0.01,
                            ),
                            text(data: "Create a passphrase using random words or a memorable sentence. Statistically, passphrases are more secure and easier to remember than traditional passwords. Passphrases like 'Sunny/Banana/Blue/Skies' are easier to remember & more secure due to their length & complexity.", fs: 12, textColor: appColors.bgColor, fw: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: appColors.text2Color,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(data: 'Personalize with Purpose', fs: 15, textColor: appColors.bgColor, fw: FontWeight.w900),
                                Icon(Icons.done_outline_outlined,color: appColors.bgColor,size: 30,)
                              ],
                            ),
                            SizedBox(
                              height: height*0.01,
                            ),
                            text(data: "Avoid quickly guessable information like birthdays or common words. Incorporate profession or hobbies into your passwords. Personalized elements, such as your favorite book title or hobby, can make your password easier to recall without sacrificing security.", fs: 12, textColor: appColors.bgColor, fw: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: appColors.text2Color,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(data: 'Avoid Predictable Patterns', fs: 15, textColor: appColors.bgColor, fw: FontWeight.w900),
                                Icon(Icons.cancel_outlined ,color: appColors.bgColor,size: 30,)
                              ],
                            ),
                            SizedBox(
                              height: height*0.01,
                            ),
                            text(data: "Steer clear of obvious patterns like '123456' or 'password'. These are among the most commonly used passwords, making them a target for hackers. They are well aware of common password patterns, so breaking away from predictability is essential.", fs: 12, textColor: appColors.bgColor, fw: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: appColors.text2Color,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(data: 'Use a Password Manager', fs: 15, textColor: appColors.bgColor, fw: FontWeight.w900),
                                Icon(Icons.done_outline_outlined,color: appColors.bgColor,size: 30,)
                              ],
                            ),
                            SizedBox(
                              height: height*0.01,
                            ),
                            text(data: "Use a reliable password generator to securely generate and store complex passwords. This technology ensures you don't have to remember every password. Password generators like PassGeni can create and remember strong, unique passwords quickly.", fs: 12, textColor: appColors.bgColor, fw: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                          color: appColors.text2Color,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child:  Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: height*0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text(data: 'Decode Password Complexity', fs: 15, textColor: appColors.bgColor, fw: FontWeight.w900),
                                Icon(Icons.done_outline_outlined,color: appColors.bgColor,size: 30,)
                              ],
                            ),
                            SizedBox(
                              height: height*0.01,
                            ),
                            text(data: "Specific numbers, uppercase & lowercase letters, & symbols don't make strong passwords. Surprisingly, 52% of people still use guessable patterns like 'PaSsw0rd123'. Our random password generator includes options to add symbols & capital letters to accommodate your requirements.", fs: 12, textColor: appColors.bgColor, fw: FontWeight.w500),
                          ],
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                      height: height*0.265,
                      viewportFraction: 0.9,
                    autoPlay: true
                  )),
              SizedBox(
                height: height*0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
