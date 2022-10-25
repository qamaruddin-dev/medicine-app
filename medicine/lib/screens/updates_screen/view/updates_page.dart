import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/home_screen/view/home_page.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({Key? key}) : super(key: key);

  @override
  _UpdatesPageState createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: Customshape(),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration:  BoxDecoration(
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Center(
              child: Text(
                'Today\'s pending meds',
                style: GoogleFonts.openSans(
                  shadows: [
                    Shadow(
                        color: brownishColor,
                        offset: Offset(0, -5))
                  ],
                  color: Colors.transparent,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  decoration:
                  TextDecoration.underline,
                  decorationColor: Colors.black,
                  decorationThickness: 3,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.09,bottom: 5),
              child: Text(
                'Pending',
                style: GoogleFonts.openSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(width: .2,color: Colors.black38),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.03,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                                      child: Image.asset('assets/icons/pills_icon.png',scale: .8,color: pillColor,),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Paracetamol',
                                          style: GoogleFonts.openSans(
                                              fontSize: 14,
                                              color: tabIconColor,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          '20g, take 2 pill(s)',
                                          style: GoogleFonts.openSans(
                                              fontSize: 8,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                                      child: Text(
                                        '8:00 AM',
                                        style: GoogleFonts.openSans(
                                            fontSize: 9,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.03,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },),
            )
          ],
        ),
      ),
    );
  }
}
