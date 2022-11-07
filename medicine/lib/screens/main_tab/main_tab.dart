import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/home_screen/view/home_page.dart';
import 'package:medicine/screens/main_tab/maintab_provider/mainTab_provider.dart';
import 'package:medicine/screens/medication_screen/view/medication_screen.dart';
import 'package:medicine/screens/more_screen/view/more_screen.dart';
import 'package:medicine/screens/updates_screen/view/updates_page.dart';
import 'package:medicine/screens/why_medication/view/whyMedication_page.dart';
import 'package:provider/provider.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  List<Widget> screens = [
    const HomePage(),
    const UpdatesPage(),
    const MedicationPage(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<MainTabProvider>(builder: (BuildContext context, value, Widget? child) {
        return screens.elementAt(value.currentIndex);
      },),
      bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Consumer<MainTabProvider>(builder: (BuildContext context, value, Widget? child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    value.updateIndex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg_icons/home_icon.svg',width: 20,color: value.currentIndex == 0 ? tabColor : tabIconColor,),
                      Text(
                        'Home',
                        style: GoogleFonts.openSans(
                            fontSize: 8,
                            color: value.currentIndex == 0 ? tabColor : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),GestureDetector(
                  onTap: (){
                    value.updateIndex(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg_icons/update_icon.svg',width: 20,color: value.currentIndex == 1 ? tabColor : tabIconColor,),
                      Text(
                        'Update',
                        style: GoogleFonts.openSans(
                            fontSize: 8,
                            color: value.currentIndex == 1 ? tabColor : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),GestureDetector(
                  onTap: (){
                    value.updateIndex(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg_icons/medication_icon.svg',width: 20,color: value.currentIndex == 2 ? tabColor : tabIconColor,),
                      Text(
                        'Medications',
                        style: GoogleFonts.openSans(
                            fontSize: 8,
                            color: value.currentIndex == 2 ? tabColor : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),GestureDetector(
                  onTap: (){
                    value.updateIndex(3);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/svg_icons/more_icon.svg',width: 20,color: value.currentIndex == 3 ? tabColor : tabIconColor,),
                      Text(
                        'More',
                        style: GoogleFonts.openSans(
                            fontSize: 8,
                            color: value.currentIndex == 3 ? tabColor : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },),
    ),
    );
  }
}
