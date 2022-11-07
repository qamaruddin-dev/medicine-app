import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/login_screen/login_provider/login_provider.dart';
import 'package:medicine/screens/morning_reminder/morningreminder_provider/morning_provider.dart';
import 'package:provider/provider.dart';

class MorningReminderScreen extends StatefulWidget {
  const MorningReminderScreen({Key? key}) : super(key: key);

  @override
  _MorningReminderScreenState createState() => _MorningReminderScreenState();
}

class _MorningReminderScreenState extends State<MorningReminderScreen> {
  String time = '08:00 AM';

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
                    'Morning Reminder',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02),
              child: Text(
                'Reminder',
                style: GoogleFonts.openSans(
                  color: settingFontColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Leave home with meds',
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Transform.scale(
                    scale: 1,
                    child: Consumer<MorningProvider>(
                      builder: (BuildContext context, value, Widget? child) {
                        return Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.green,
                            value: value.reminder,
                            splashRadius: 30,
                            onChanged: (val) {
                              value.updateReminder(val!);
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.02),
              child: Text(
                'A reminder to take your meds with you when you leave home',
                style: GoogleFonts.openSans(
                  color: Colors.black.withOpacity(.53),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Consumer<MorningProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return value.reminder
                    ? Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: Text(
                              'Set Time',
                              style: GoogleFonts.openSans(
                                color: settingFontColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left:
                                    MediaQuery.of(context).size.height * 0.02),
                            child: GestureDetector(
                              onTap: () async {
                                TimeOfDay? picked = await showTimePicker(
                                  context: context,
                                  initialTime:
                                      TimeOfDay.fromDateTime(DateTime.now()),
                                );
                                if (picked != null) {
                                  time = picked.format(context);
                                  setState(() {});
                                }
                              },
                              child: Text(
                                time,
                                style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container();
              },
            ),
            Expanded(child: SizedBox()),
            Center(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.055,
                    decoration: BoxDecoration(
                      color: calenderColor,
                      borderRadius: BorderRadius.circular(100),
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
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            )
          ],
        ),
      ),
    );
  }
}
