import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      'Help',
                      style: GoogleFonts.openSans(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Text(
                'Need an help?',
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.65),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
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
              Padding(
                padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.065 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
                      child: Text(
                        'Why did my reminders stop working',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
                      child: Text(
                        'How is my data protected',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
                      child: Text(
                        'Why should I create an account',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
                      child: Text(
                        'How can I reset my password',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.06),
                      child: Text(
                        'How can I invite my friends to this app',
                        style: GoogleFonts.openSans(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Divider(
                      indent: MediaQuery.of(context).size.height * 0.03,
                      endIndent: MediaQuery.of(context).size.height * 0.03,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
