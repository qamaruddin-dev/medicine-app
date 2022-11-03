import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/basic_setting/view/basicSetting_screen.dart';
import 'package:medicine/screens/setting_screen/view/widgets.dart';

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
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
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
                  rowWithIconText(context: context,text: 'Settings',image: 'assets/icons/settings2_icon.png',
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
                  rowWithIconText(context: context,text: 'Login',image: 'assets/icons/login_icon.png',
                      tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Passcode',image: 'assets/icons/passcode_icon.png',
                      tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Open Account',image: 'assets/icons/openaccount_icon.png',
                      tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Verification Code',image: 'assets/icons/verificationcode_icon.png',
                      tab: (){}),
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
                  rowWithIconText(context: context,text: 'Upgrade to premium',image: 'assets/icons/upgrade_icon.png',
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
                  rowWithIconText(context: context,text: 'Rate us',image: 'assets/icons/rateus_icon.png',tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'Send Feedback',image: 'assets/icons/feedback_icon.png',tab: (){}),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  rowWithIconText(context: context,text: 'About',image: 'assets/icons/about_icon.png',tab: (){}),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
