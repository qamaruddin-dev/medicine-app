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
  bool addLanguage = false;
  bool appMode = false;
  List<String> languages = [
    'English',
    'Hindi',
    'Arabic',
    'Dutch',
    'British',
    'Polski',
    'Chinese'
  ];
  List<String> appModes = ['Light', 'Dark'];
  int value = 0;
  int enableMode = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
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
                        onTap: () {
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
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.03),
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
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/morningrem_icon.svg',
                        text: 'Morning Reminder',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MorningReminderScreen()));
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/eveningrem_icon.svg',
                        text: 'Evening Reminder',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EveningReminderScreen()));
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/weeklysum_icon.svg',
                        text: 'Weekly summary',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const WeeklySummaryScreen()));
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/weekendmode_icon.svg',
                        text: 'Weekend mode',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WeekendMode()));
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/language_icon.svg',
                        text: 'Language',
                        onTab: () {
                          setState(() {
                            addLanguage = true;
                          });
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/sound_icon.svg',
                        text: 'Sound',
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SoundScreen()));
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    rowForBasicSettingIconText(
                        context: context,
                        image: 'assets/svg_icons/darkmode_icon.svg',
                        text: 'Dark mode state',
                        onTab: () {
                          setState(() {
                            appMode = true;
                          });
                        }),
                  ],
                ),
              )
            ],
          ),
          addLanguage
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.85),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: brownishColor, width: .2)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      addLanguage = false;
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_back_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Languages',
                                  style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: languages.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return RadioListTile(
                                    value: index,
                                    groupValue: value,
                                    activeColor: appColor,
                                    onChanged: (int? ind) =>
                                        setState(() => value = ind!),
                                    title: Text(
                                      languages[index],
                                      style: GoogleFonts.openSans(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  );
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  addLanguage = false;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: appColor.withOpacity(.8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Save',
                                    style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
              : Container(),
          appMode
              ? Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.85),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: brownishColor, width: .2)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      appMode = false;
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_back_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Dark mode state',
                                  style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: appModes.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return RadioListTile(
                                    value: index,
                                    groupValue: enableMode,
                                    activeColor: appColor,
                                    onChanged: (int? ind) =>
                                        setState(() => enableMode = ind!),
                                    title: Text(
                                      appModes[index],
                                      style: GoogleFonts.openSans(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  );
                                },
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  appMode = false;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: appColor.withOpacity(.8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Save',
                                    style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
              : Container(),
        ],
      )),
    );
  }
}
