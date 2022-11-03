import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/basic_setting/view/widget.dart';
import 'package:medicine/screens/evening_reminder/view/eveningreminder_screen.dart';
import 'package:medicine/screens/morning_reminder/view/morning_reminder.dart';
import 'package:medicine/screens/sound_screen/view/sound_screen.dart';
import 'package:medicine/screens/weekend_mode/view/weekend_mode.dart';
import 'package:medicine/screens/weekly_summary/view/weeklysummary_screen.dart';

class BasicSettingScreen extends StatefulWidget {
  const BasicSettingScreen({Key? key}) : super(key: key);

  @override
  _BasicSettingScreenState createState() => _BasicSettingScreenState();
}

class _BasicSettingScreenState extends State<BasicSettingScreen> {
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
                    'Reminders',
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
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/morningrem_icon.png',
                  text: 'Morning Reminder',onTab: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MorningReminderScreen()));
                      }),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(indent: MediaQuery.of(context).size.height * 0.03,
                  endIndent: MediaQuery.of(context).size.height * 0.03,),
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/eveningrem_icon.png',
                  text: 'Evening Reminder',onTab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const EveningReminderScreen()));
                      }),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(indent: MediaQuery.of(context).size.height * 0.03,
                    endIndent: MediaQuery.of(context).size.height * 0.03,),
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/weeklysum_icon.png',
                  text: 'Weekly summary',onTab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WeeklySummaryScreen()));
                      }),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(indent: MediaQuery.of(context).size.height * 0.03,
                    endIndent: MediaQuery.of(context).size.height * 0.03,),
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/weekendmode_icon.png',
                  text: 'Weekend mode',onTab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const WeekendMode()));
                      }),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(indent: MediaQuery.of(context).size.height * 0.03,
                    endIndent: MediaQuery.of(context).size.height * 0.03,),
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/language_icon.png',
                  text: 'Language',onTab: (){}),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(indent: MediaQuery.of(context).size.height * 0.03,
                    endIndent: MediaQuery.of(context).size.height * 0.03,),
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/sound_icon.png',
                  text: 'Sound',onTab: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SoundScreen()));
                      }),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Divider(indent: MediaQuery.of(context).size.height * 0.03,
                    endIndent: MediaQuery.of(context).size.height * 0.03,),
                  rowForBasicSettingIconText(context: context,image: 'assets/icons/darkmode_icon.png',
                  text: 'Dark mode state',onTab: (){}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
