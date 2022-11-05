import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  int selectedIndex = -1;
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
                    'Feedback',
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
                    'Feedback',
                    style: GoogleFonts.openSans(
                        fontSize: 18,
                        color: Colors.black.withOpacity(.49),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'How satisfied are you after using this app',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.33),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.06,
                    child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.12),
                          child: GestureDetector(
                            onTap: (){
                              selectedIndex = index;
                              setState(() {});
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.06,
                              height: MediaQuery.of(context).size.width * 0.06,
                              color: containerColor.withOpacity(
                                  selectedIndex == index ? .50 : .10),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: GoogleFonts.openSans(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        );
                      },),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Not satisfied',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.black.withOpacity(.33),
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Very satisfied',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.black.withOpacity(.33),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
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
