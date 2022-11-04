import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';

class RateUs extends StatefulWidget {
  const RateUs({Key? key}) : super(key: key);

  @override
  _RateUsState createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                      onTap: (){
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
                    'Rate us',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
           Padding(
             padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.3 ),
             child: Column(
               children: [
                 Text(
                   'Rate Us',
                   style: GoogleFonts.openSans(
                       fontSize: 18,
                       color: Colors.black.withOpacity(.49),
                       fontWeight: FontWeight.w600),
                 ),
                 Text(
                   'Give us five stars on playstore/appstore',
                   style: GoogleFonts.openSans(
                       fontSize: 14,
                       color: Colors.black.withOpacity(.33),
                       fontWeight: FontWeight.w400),
                 ),
                 SizedBox(
                   height: MediaQuery.of(context).size.height * 0.02,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(
                       Icons.star,
                       color: Colors.yellow,
                       size: 35,
                     ),Icon(
                       Icons.star,
                       color: Colors.yellow,
                       size: 35,
                     ),Icon(
                       Icons.star,
                       color: Colors.yellow,
                       size: 35,
                     ),Icon(
                       Icons.star,
                       color: Colors.yellow,
                       size: 35,
                     ),Icon(
                       Icons.star,
                       color: Colors.yellow,
                       size: 35,
                     ),
                   ],
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
