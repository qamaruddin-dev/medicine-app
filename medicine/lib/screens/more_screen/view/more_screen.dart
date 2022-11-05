import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/appointments_screen/view/appointment_screen.dart';
import 'package:medicine/screens/doctors_screen/view/doctor_screen.dart';
import 'package:medicine/screens/help_screen/view/help_screen.dart';
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/svg_icons/profile_icon.svg',width: 40,),
                          ),
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
                        SvgPicture.asset('assets/svg_icons/notification_icon.svg',width: 25,color: Colors.white,),
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
              image: 'assets/svg_icons/appointment_icon.svg',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AppointmentScreen()));
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Doctors',
              image: 'assets/svg_icons/doctor_icon.svg',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorScreen()));
              }
            ),SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Refill',
              image: 'assets/svg_icons/refill_icon.svg',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RefillScreen()));
              },
            ),SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Setting',
              image: 'assets/svg_icons/setting_icon.svg',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()));
              },
            ),SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            moreWidgetRow(
              text: 'Help & Support',
              image: 'assets/svg_icons/help_icon.svg',
              tab: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpScreen()));
              },
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
        SvgPicture.asset(image,width: 35,),
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
