import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';


class MedicationFormPage extends StatefulWidget {
  const MedicationFormPage({Key? key}) : super(key: key);

  @override
  _MedicationFormPageState createState() => _MedicationFormPageState();
}

class _MedicationFormPageState extends State<MedicationFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.17,
                color: appColor.withOpacity(.9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'What form is the med?',
                          style: GoogleFonts.openSans(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ''
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/meditationAlert_icon.png'),
                        SizedBox(
                          width: 2,
                        ),
                        Image.asset('assets/icons/awsomeCapsules_icon.png'),
                        SizedBox(
                          width: 1,
                        ),
                        Image.asset('assets/icons/injection_icon.png'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  children: [
                    Image.asset('assets/icons/injection_icon.png',color: Color(0xff5294B7),),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'Injection',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: MediaQuery.of(context).size.width * 0.08,
                indent: MediaQuery.of(context).size.width * 0.08,
                thickness: 3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  children: [
                    Image.asset('assets/icons/pill_icon.png',),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pill',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: MediaQuery.of(context).size.width * 0.08,
                indent: MediaQuery.of(context).size.width * 0.08,
                thickness: 3,
              ),SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  children: [
                    Image.asset('assets/icons/drops_icon.png',),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Drops',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: MediaQuery.of(context).size.width * 0.08,
                indent: MediaQuery.of(context).size.width * 0.08,
                thickness: 3,
              ),SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                child: Row(
                  children: [
                    Image.asset('assets/icons/other_icon.png',),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Others',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: MediaQuery.of(context).size.width * 0.08,
                indent: MediaQuery.of(context).size.width * 0.08,
                thickness: 3,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: buttonColor.withOpacity(.9),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    'Next',
                    style: GoogleFonts.openSans(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
