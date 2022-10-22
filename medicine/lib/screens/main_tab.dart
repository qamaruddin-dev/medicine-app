import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/home_screen/view/home_page.dart';
import 'package:medicine/screens/medication_screen/view/medication_screen.dart';
import 'package:medicine/screens/more_screen/view/more_screen.dart';
import 'package:medicine/screens/updates_screen/view/updates_page.dart';
import 'package:medicine/screens/why_medication/view/whyMedication_page.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int _currentIndex = 0;
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
      body: screens.elementAt(_currentIndex),
      bottomNavigationBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/home_icon.png',color: _currentIndex == 0 ? tabColor : tabIconColor,),
                    Text(
                      'Home',
                      style: GoogleFonts.openSans(
                          fontSize: 8,
                          color: _currentIndex == 0 ? tabColor : Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),GestureDetector(
                onTap: (){
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/update_icon.png',color: _currentIndex == 1 ? tabColor : tabIconColor,),
                    Text(
                      'Update',
                      style: GoogleFonts.openSans(
                          fontSize: 8,
                          color: _currentIndex == 1 ? tabColor : Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),GestureDetector(
                onTap: (){
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/medication_icon.png',color: _currentIndex == 2 ? tabColor : tabIconColor,),
                    Text(
                      'Medications',
                      style: GoogleFonts.openSans(
                          fontSize: 8,
                          color: _currentIndex == 2 ? tabColor : Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),GestureDetector(
                onTap: (){
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/more_icon.png',color: _currentIndex == 3 ? tabColor : tabIconColor,),
                    Text(
                      'More',
                      style: GoogleFonts.openSans(
                          fontSize: 8,
                          color: _currentIndex == 3 ? tabColor : Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
