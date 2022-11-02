import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/helper/validation.dart';
import 'package:medicine/screens/login_screen/view/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formGlobalKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String emailErrorText = '';
  String passwordErrorText = '';
  String nameErrorText = '';

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
                      'Signup',
                      style: GoogleFonts.openSans(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                height: 80,
                width: 80,
                child: SvgPicture.asset(
                  'assets/svg_icons/user.svg',
                  color: Color(0xff707070),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Form(
                  key: formGlobalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                'assets/svg_icons/user.svg',
                                width: 25,
                                color: Color(0xff707070),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _nameController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: 'Name',
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 14,
                                        color: Color(0xff707070),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  onChanged: (val){
                                    if(val.isNotEmpty){
                                      setState(() {
                                        nameErrorText = '';
                                      });
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      nameErrorText.isEmpty
                          ? SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      )
                          : Text(
                        nameErrorText,
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.red),
                      ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                'assets/svg_icons/email.svg',
                                width: 25,
                                color: Color(0xff707070),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: 'Email',
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 14,
                                        color: Color(0xff707070),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  onChanged: (text) {
                                    String result = validateEmail(text);
                                    setState(() {
                                      emailErrorText = result;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      emailErrorText.isEmpty
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            )
                          : Text(
                              emailErrorText,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                'assets/svg_icons/key.svg',
                                width: 25,
                                color: Color(0xff707070),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 14,
                                        color: Color(0xff707070),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  onChanged: (text) {
                                    String result = validatePassword(text);
                                    setState(() {
                                      passwordErrorText = result;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      passwordErrorText.isEmpty
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            )
                          : Text(
                              passwordErrorText,
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                    ],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  if(_nameController.text.isEmpty){
                    setState(() {
                      nameErrorText = 'Can\'t be empty';
                    });
                  }else if(_emailController.text.isEmpty){
                    setState(() {
                      emailErrorText = 'Can\'t be empty';
                    });
                  }else if(_passwordController.text.isEmpty){
                    setState(() {
                      passwordErrorText = 'Can\'t be empty';
                    });
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Already have an account? Login',
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
