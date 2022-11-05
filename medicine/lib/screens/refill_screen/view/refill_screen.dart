import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';

class RefillScreen extends StatefulWidget {
  const RefillScreen({Key? key}) : super(key: key);

  @override
  _RefillScreenState createState() => _RefillScreenState();
}

class _RefillScreenState extends State<RefillScreen> {
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
                    'Refills',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: Image.asset('assets/icons/refill_icon.png').image
                    )
                  ),
                ),
                Text(
                  'Log your refills',
                  style: GoogleFonts.openSans(
                      fontSize: 22,
                      color: Colors.black.withOpacity(.70),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Your refill history',
                  style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.black.withOpacity(.43),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text('')
          ],
        ),
      ),
    );
  }
}
