import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/appointments_screen/view/appointment_screen.dart';
import 'package:medicine/screens/doctors_screen/view/doctor_screen.dart';
import 'package:medicine/screens/home_screen/view/home_page.dart';
import 'package:medicine/screens/refill_screen/view/refill_screen.dart';
import 'package:medicine/screens/setting_screen/view/setting_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClipPath(
              clipper: Customshape(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: appColor.withOpacity(.58),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/icons/profile_icon.png'),
                          SizedBox(
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              'Ahsan',
                              style: GoogleFonts.openSans(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child:
                        Image.asset('assets/icons/notification_icon.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            moreWidgetRow(
              text: 'Appointments',
              image: 'assets/icons/appointment_icon.png',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppointmentScreen()));
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Doctors',
              image: 'assets/icons/doctor_icon.png',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorScreen()));
              }
            ),SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Refill',
              image: 'assets/icons/refill_icon.png',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RefillScreen()));
              },
            ),SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Setting',
              image: 'assets/icons/setting_icon.png',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()));
              },
            ),SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Help & Support',
              image: 'assets/icons/help_icon.png',
              tab: (){},
            ),
          ],
        ),
      ),
    );
  }
}

Widget moreWidgetRow({required String text, required String image,required Function() tab}){
  return GestureDetector(
    onTap: tab,
    child: Row(
      children: [
        const SizedBox(width: 25,),
        Image.asset(image),
        const SizedBox(width: 25,),
        Text(
          text,
          style: GoogleFonts.openSans(
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
