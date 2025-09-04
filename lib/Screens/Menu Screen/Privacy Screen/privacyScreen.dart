import 'package:flutter/material.dart';

import '../../../Constans/App Colors/appColors.dart';
import '../../../Constans/Reusable Widgets/text.dart';

class privacyScreen extends StatelessWidget {
  const privacyScreen({super.key});



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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.065),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: 'Privacy Policy', fs: 16, textColor: appColors.text1Color, fw: FontWeight.w900)),
              SizedBox(
                height: height*0.005,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Effective Date: 8/23/2024", fs: 15, textColor: const Color(0xffF4F4F4), fw: FontWeight.w800)),
              SizedBox(
                height: height*0.01,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "At Passgeni, accessible from Passgeni.Online, the privacy of our visitors and users is a top priority. This Privacy Policy document outlines the types of information that may be collected and recorded by Passgeni and how we use it.", fs: 14, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "If you have additional questions or need more details about our Privacy Policy, please feel free to contact us.", fs: 14, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "This Privacy Policy applies solely to our online activities and is valid for visitors to our website and users of our mobile application with regard to the information that they share and/or we collect. This policy does not apply to any information collected offline or through other channels besides this website and app.", fs: 14, textColor: appColors.text1Color, fw: FontWeight.w400)),
              SizedBox(
                height: height*0.009,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Consent", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w900)),
              SizedBox(
                height: height*0.005,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "By using our website and app, you hereby consent to our Privacy Policy and agree to its terms. If you are looking for our Terms and Conditions, please refer to our Terms & Conditions document.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Information We Collect", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              SizedBox(
                height: height*0.005,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "The types of personal information we may ask you to provide, and the reasons why we request it, will be made clear to you at the point we ask for your information.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Row(
                children: [
                  Container(
                    height: 1.5,
                    width: 5,
                    color: Colors.white,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: text(data: " Direct Contact:", fs: 15, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
                ],
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "If you contact us directly, we may receive additional details such as your name, email address, phone number, and any other information you choose to share, including the content of your message and any attachments.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Row(
                children: [
                  Container(
                    height: 1.5,
                    width: 5,
                    color: Colors.white,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: text(data: " Account Registration:", fs: 15, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
                ],
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "If you create an account, we may request contact details such as your name, company name, address, email address, and phone number.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "How We Use Your Information", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              SizedBox(
                height: height*0.001,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "The information we collect is used in various ways, including to:", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              SizedBox(
                height: height*0.01,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Operate, maintain, and improve our website & app.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Personalize and expand the functionality of our services.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Understand and analyze how you use our tool.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Develop new features, products, and services.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Communicate with you for customer support, updates, marketing, or promotional purposes.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Send you emails regarding updates or information relevant to the service.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Prevent fraud and ensure the security of our services.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height*0.01,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Log Files", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Passgeni follows a standard practice of using log files. These files log visitors when they visit websites and use apps. This is a standard procedure for hosting services and part of their analytics. Information collected by log files may include IP addresses, browser types, Internet Service Providers (ISP), date and time stamps, referring/exit pages, and possibly the number of clicks. This data is not linked to any personally identifiable information and is used for analyzing trends, administering the site, tracking users’ movement, and gathering demographic information.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.01,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Cookies and Web Beacons", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Passgeni uses cookies to store information about visitors’ preferences and the pages on our website that were accessed or visited. This information is used to optimize user experience by customizing our content based on visitors’ browser types and other details.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.01,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "For more general information on cookies, you can read 'What Are Cookies' from Cookie Consent.", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Advertising Partners", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Some of our advertising partners may use cookies and web beacons. Our advertising partners are listed below, and each has its own Privacy Policy detailing their practices related to user data. For easier access, we have provided hyperlinks to their Privacy Policies:", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height*0.01),
                    child: const Icon(
                      Icons.circle,
                      size: 8,
                      color: Color(0xffF4F4F4),
                    ),
                  ),
                  const SizedBox(width: 8), // Add some spacing between the icon and the text
                  const Expanded(
                    child: Text(
                      "Google: https://policies.google.com/technologies/ads",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffF4F4F4),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Advertising Partners Privacy Policies", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "You may consult this list to find the Privacy Policy for each of the advertising partners of Passgeni.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Third-party ad servers or ad networks use technologies like cookies, JavaScript, or web beacons in their advertisements and links that appear on Passgeni, which are sent directly to your browser. When this happens, they automatically receive your IP address. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content you see on websites you visit.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Please note that Passgeni has no access to or control over these cookies used by third-party advertisers.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Third-Party Privacy Policies", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Passgeni’s Privacy Policy does not apply to other advertisers or websites. Therefore, we advise you to consult the respective Privacy Policies of these third-party ad servers for more detailed information, including their practices and instructions on how to opt out of certain options.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "You can disable cookies through your browser settings. More detailed information about cookie management with specific web browsers can be found on the browsers’ respective websites.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "CCPA Privacy Rights (Do Not Sell My Personal Information)", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Under the CCPA, California consumers have the right to:", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Request that a business disclose the categories and specific pieces of personal data collected.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Request that a business delete any personal data collected about them.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "Request that a business that sells personal data not sell the consumer's personal data.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.01),
                        child: const Icon(
                          Icons.circle,
                          size: 8,
                          color: Color(0xffF4F4F4),
                        ),
                      ),
                      const SizedBox(width: 8), // Add some spacing between the icon and the text
                      const Expanded(
                        child: Text(
                          "If you make a request, we have one month to respond. If you would like to exercise any of these rights, please contact us.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffF4F4F4),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "GDPR Data Protection Rights", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "We want to ensure you are fully aware of your data protection rights. Every user is entitled to the following:", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Right to Access: You can request copies of your personal data. We may charge a small fee for this service.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Right to Rectification: You can request that we correct any information you believe is inaccurate or complete information you believe is incomplete.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Right to Erasure: You can request that we erase your personal data, under certain conditions.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Right to Restrict Processing: You can request that we restrict the processing of your personal data, under certain conditions.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Right to Object to Processing: You can object to our processing of your personal data, under certain conditions.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Right to Data Portability: You can request that we transfer the data we have collected to another organization or directly to you, under certain conditions.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "If you make a request, we have one month to respond. If you would like to exercise any of these rights, please contact us.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),

              SizedBox(
                height: height*0.008,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: text(data: "Children's Information", fs: 16, textColor: const Color(0xffF4F4F4), fw: FontWeight.w700)),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Protecting children while using the internet is one of our priorities. We encourage parents and guardians to observe, participate in, and monitor their children's online activities.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),
              SizedBox(
                height: height*0.005,
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: text(data: "Passgeni does not knowingly collect any personally identifiable information from children under the age of 13. If you believe that your child provided this type of information on our website, please contact us immediately, and we will make our best efforts to promptly remove such information from our records.", fs: 14, textColor: const Color(0xffF4F4F4), fw: FontWeight.w400)),

              SizedBox(
                height: height*0.05,
              ),
              Container(
                height: 2,
                width: width*0.7,
                color: appColors.text2Color,
              ),
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
