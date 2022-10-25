import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/doctors_screen/view/addDoctor_screen.dart';

class DoctorScreen extends StatefulWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Doctors',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'Add your doctor',
                  style: GoogleFonts.openSans(
                      fontSize: 22,
                      color: Colors.black.withOpacity(.50),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Search for your doctors to set appointment',
                  style: GoogleFonts.openSans(
                      fontSize: 11,
                      color: Colors.black.withOpacity(.40),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(100.0),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddDoctor()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: MediaQuery.of(context).size.height * 0.055,
                      decoration: BoxDecoration(
                        color: calenderColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'Add a doctor',
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
            ),
          ],
        ),
      ),
    );
  }
}
