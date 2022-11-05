import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/home_screen/view/home_page.dart';

class MedicationPage extends StatefulWidget {
  const MedicationPage({Key? key}) : super(key: key);

  @override
  _MedicationPageState createState() => _MedicationPageState();
}

class _MedicationPageState extends State<MedicationPage> {
  bool suspend = false;
  bool refill = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: Customshape(),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: appColor.withOpacity(0.58),
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
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: Text(
                  'Your active meds',
                  style: GoogleFonts.openSans(
                    shadows: [
                      Shadow(color: brownishColor, offset: Offset(0, -5))
                    ],
                    color: Colors.transparent,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    decorationThickness: 3,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.09),
                            child: Text(
                              'Reminder: Everyday, 12:00 AM',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.07),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: .2, color: Colors.black38),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
                                        child: SvgPicture.asset(
                                          'assets/svg_icons/capsule_icon.svg',
                                          width: 20,
                                          color: appGreenColor,
                                        ),
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
                                        child: Column(
                                          children: [
                                            Card(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100.0),
                                              ),
                                              child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    suspend = true;
                                                  });
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.12,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.03,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      color:
                                                          calenderColor),
                                                  child: Center(
                                                    child: Text(
                                                      'Suspend',
                                                      style: GoogleFonts.openSans(
                                                          fontSize: 8,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Card(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100.0),
                                              ),
                                              child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    refill = true;
                                                  });
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.12,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.03,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      color:
                                                      calenderColor),
                                                  child: Center(
                                                    child: Text(
                                                      'Refill',
                                                      style: GoogleFonts.openSans(
                                                          fontSize: 8,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(100.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.055,
                    decoration: BoxDecoration(
                      color: calenderColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text(
                        'Add a med',
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          suspend
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
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.15,
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
                                  width: 10,
                                ),
                                Text(
                                  'Do you want to suspend all upcoming reminders for this med?',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(100.0),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        suspend = false;
                                      });
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.25,
                                      height: MediaQuery.of(context).size.height *
                                          0.04,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: appColor.withOpacity(.7)),
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: GoogleFonts.openSans(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(100.0),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        suspend = false;
                                      });
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.25,
                                      height: MediaQuery.of(context).size.height *
                                          0.04,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: appColor.withOpacity(.7)),
                                      child: Center(
                                        child: Text(
                                          'Confirm',
                                          style: GoogleFonts.openSans(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
              : Container(),
          refill
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
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: MediaQuery.of(context).size.height * 0.21,
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
                                  width: 10,
                                ),
                                Text(
                                  'Refill your prescription',
                                  style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: TextFormField(
                                cursorColor: brownishColor,
                                decoration: InputDecoration(
                                  isDense: true,
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(color: brownishColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: brownishColor),
                                  ),
                                  hintText: 'Add',
                                  hintStyle: GoogleFonts.openSans(
                                      fontSize: 14,
                                      color: Color(0xff707070),
                                      fontWeight: FontWeight.w400),
                                ),
                                validator: (val){
                                  if(val!.isEmpty){
                                    return 'Field Required';
                                  }
                                  if(val.length < 8){
                                    return 'Password should be greater than 8 digit';
                                  }
                                  else{
                                    return null;
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(100.0),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        refill = false;
                                      });
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.25,
                                      height: MediaQuery.of(context).size.height *
                                          0.04,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: appColor.withOpacity(.7)),
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: GoogleFonts.openSans(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(100.0),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        refill = false;
                                      });
                                    },
                                    child: Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.25,
                                      height: MediaQuery.of(context).size.height *
                                          0.04,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: appColor.withOpacity(.7)),
                                      child: Center(
                                        child: Text(
                                          'Confirm',
                                          style: GoogleFonts.openSans(
                                              fontSize: 8,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )
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
