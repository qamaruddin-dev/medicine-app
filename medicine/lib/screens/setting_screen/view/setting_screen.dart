import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/about_screen/view/about_screen.dart';
import 'package:medicine/screens/basic_setting/view/basicSetting_screen.dart';
import 'package:medicine/screens/feedback_screen/view/feedback_screen.dart';
import 'package:medicine/screens/passcode_screen/view/passcode_screen.dart';
import 'package:medicine/screens/rateus_screen/view/rateus_screen.dart';
import 'package:medicine/screens/setting_screen/view/widgets.dart';
import 'package:medicine/screens/verificationcode_screen/view/verificationcode_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.12,
              color: appColor.withOpacity(.58),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Settings',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Basic',
                    style: GoogleFonts.openSans(
                      shadows: [
                        Shadow(color: settingFontColor, offset: Offset(0, -6))
                      ],
                      color: Colors.transparent,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: settingFontColor,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  rowWithIconText(context: context,text: 'Settings',image: 'assets/svg_icons/setting_icon.svg',
                  tab: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BasicSettingScreen()));
                  }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Personal',
                    style: GoogleFonts.openSans(
                      shadows: [
                        Shadow(color: settingFontColor, offset: Offset(0, -6))
                      ],
                      color: Colors.transparent,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: settingFontColor,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Login',image: 'assets/svg_icons/login_icon.svg',
                      tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Passcode',image: 'assets/svg_icons/passcode_icon.svg',
                      tab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PasscodeScreen()));
                      }),
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.03,
                  // ),
                  // rowWithIconText(context: context,text: 'Open Account',image: 'assets/svg_icons/openaccount_icon.svg',
                  //     tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Verification Code',image: 'assets/svg_icons/verificationcode_icon.svg',
                      tab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationScreen()));
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Premium',
                    style: GoogleFonts.openSans(
                      shadows: [
                        Shadow(color: settingFontColor, offset: Offset(0, -6))
                      ],
                      color: Colors.transparent,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: settingFontColor,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Upgrade to premium',image: 'assets/svg_icons/upgrade_icon.svg',
                      tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Text(
                    'Others',
                    style: GoogleFonts.openSans(
                      shadows: [
                        Shadow(color: settingFontColor, offset: Offset(0, -6))
                      ],
                      color: Colors.transparent,
                      fontSize: 16.5,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: settingFontColor,
                      decorationThickness: 3,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Rate us',image: 'assets/svg_icons/rateus_icon.svg',tab: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RateUs()));
                  }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Send Feedback',image: 'assets/svg_icons/feedback_icon.svg',tab: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackScreen()));
                  }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'About',image: 'assets/svg_icons/about_icon.svg',tab: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen()));
                  }),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
