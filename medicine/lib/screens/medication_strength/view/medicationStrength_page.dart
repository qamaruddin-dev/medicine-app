import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/why_medication/view/whyMedication_page.dart';

class MedicationStrengthPage extends StatefulWidget {
  const MedicationStrengthPage({Key? key}) : super(key: key);

  @override
  _MedicationStrengthPageState createState() => _MedicationStrengthPageState();
}

class _MedicationStrengthPageState extends State<MedicationStrengthPage> {
  int selectedIndex = 2;
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
                            Icons.arrow_back_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'What is the strength of med?',
                          style: GoogleFonts.openSans(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text('')
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Image.asset('assets/icons/strength_icon.png'),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.02,
                    right: MediaQuery.of(context).size.height * 0.02),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextFormField(
                    // controller: _emailController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                          Icons.search
                      ),
                      hintText: 'Search',
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 12,
                          color: brownishColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  selectedIndex == 0 ? Text(
                    'Enter in grams'
                  ) : selectedIndex == 1 ? Text(
                      'Enter in IU'
                  ) : Text(
                      'Enter in mcg'
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: selectedIndex == 0? Color(0xff1131FF) : Colors.white)
                      ),
                      child: Center(
                        child: Text(
                          'g',
                          style: GoogleFonts.openSans(
                              fontSize: 11,
                              color: selectedIndex == 0 ? Color(0xff21F221) : brownishColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: selectedIndex == 1? Color(0xff1131FF) : Colors.white)
                      ),
                      child: Center(
                        child: Text(
                          'IU',
                          style: GoogleFonts.openSans(
                              fontSize: 11,
                              color: selectedIndex == 1 ? Color(0xff21F221) : brownishColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: selectedIndex == 2? Color(0xff1131FF) : Colors.white)
                      ),
                      child: Center(
                        child: Text(
                          'Mcg',
                          style: GoogleFonts.openSans(
                              fontSize: 11,
                              color: selectedIndex == 2 ? Color(0xff21F221) : brownishColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WhyMedicationPage()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: appColor.withOpacity(.8),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
