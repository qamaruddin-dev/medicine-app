import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/add_medication/view/addMedication_page.dart';
import 'package:medicine/screens/login_screen/login_provider/login_provider.dart';
import 'package:medicine/screens/signup_screen/view/signup_page.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formGlobalKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool rememberMe = true;
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
                      'Login',
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
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    hintText: 'Email',
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 14,
                                        color: Color(0xff707070),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  // validator: (val){
                                  //   if(val!.isEmpty){
                                  //     return 'Field Required';
                                  //   }
                                  //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(val)) {
                                  //     return "Please enter a valid email address";
                                  //   }
                                  //   else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
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
                                    errorBorder: InputBorder.none,
                                    focusedErrorBorder: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 14,
                                        color: Color(0xff707070),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  // validator: (val){
                                  //   if(val!.isEmpty){
                                  //     return 'Field Required';
                                  //   }
                                  //   if(val.length < 8){
                                  //     return 'Password should be greater than 8 digit';
                                  //   }
                                  //   else{
                                  //     return null;
                                  //   }
                                  // },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .15),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Consumer<LoginProvider>(builder: (BuildContext context, value, Widget? child) {
                        return Checkbox(
                            activeColor: Colors.red,
                            checkColor: Colors.white,
                            value: value.rememberMe,
                            splashRadius: 30,
                            onChanged: (val) {
                              value.updateRememberMe(val!);
                            }
                        );
                      },),
                    ),
                    Text(
                      'Remember me',
                      style: GoogleFonts.openSans(
                          fontSize: 10,
                          color: brownishColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                onTap: (){
                  if(_emailController.text.isEmpty || _passwordController.text.isEmpty){
                    showToast(text: 'Kindly fill all field', context: context);
                  }else if(_passwordController.text.length < 8){
                    showToast(text: 'Password should greater than 8 digit', context: context);
                  } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(_emailController.text)) {
                    showToast(text: 'Kindly enter valid email', context: context);
                  }else{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddMedicationPage()));
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
                      'Login',
                      style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.5),
                child: Text(
                  'Forgot password',
                  style: GoogleFonts.openSans(
                      fontSize: 10,
                      color: brownishColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color:  Color(0xff0022FF),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff85E5F9),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                },
                child: Text(
                  'Need an account? Signup',
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: brownishColor,
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
