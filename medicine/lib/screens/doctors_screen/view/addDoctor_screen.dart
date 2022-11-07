import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/helper/validation.dart';
import 'package:medicine/screens/appointments_screen/view/textfieldRow.dart';

class AddDoctor extends StatefulWidget {
  const AddDoctor({Key? key}) : super(key: key);

  @override
  _AddDoctorState createState() => _AddDoctorState();
}

class _AddDoctorState extends State<AddDoctor> {

  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final specialityController = TextEditingController();
  final emailController = TextEditingController();
  final locationController = TextEditingController();
  String nameErrorText = '';
  String numberErrorText = '';
  String specialityErrorText= '';
  String emailErrorText = '';
  String locationErrorText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Add Doctors',
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
              Center(
                child: SvgPicture.asset('assets/svg_icons/doctor_image.svg',width: 50,),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Doctor\'s Name',
                  controller: nameController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.next,
                  iconString: 'assets/svg_icons/docName_icon.svg',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      nameErrorText = 'Can\'t be empty';
                    }else{
                      nameErrorText = '';
                    }
                    setState(() {});
                  },
                  context: context),
              nameErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),
                child: Text(nameErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Phone Number',
                  controller: phoneNumberController,
                  inputType: TextInputType.phone,
                  textAction: TextInputAction.next,
                  onChange: (String? val){
                    if(val!.isEmpty){
                      numberErrorText = 'Can\'t be empty';
                    }else{
                      numberErrorText = '';
                    }
                    setState(() {});
                  },
                  iconString: 'assets/svg_icons/telephone_icon.svg',
                  context: context),
                numberErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),
                child: Text(numberErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Speciality',
                  controller: specialityController,
                  textAction: TextInputAction.next,
                  inputType: TextInputType.text,
                  iconString: 'assets/svg_icons/speciality_icon.svg',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      specialityErrorText = 'Can\'t be empty';
                    }else{
                      specialityErrorText = '';
                    }
                    setState(() {});
                  },
                  context: context),
              specialityErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),
                child: Text(specialityErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Email',
                  controller: emailController,
                  textAction: TextInputAction.next,
                  inputType: TextInputType.emailAddress,
                  iconString: 'assets/svg_icons/email_icon.svg',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      emailErrorText = 'Can\'t be empty';
                    }else{
                      String value = validateEmail(val);
                      if(value.isNotEmpty){
                        emailErrorText = value;
                      }else{
                        emailErrorText = '';
                      }
                    }
                    setState(() {});
                  },
                  context: context),
              emailErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),
                child: Text(emailErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Location',
                  controller: locationController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.done,
                  iconString: 'assets/svg_icons/location_icon.svg',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      locationErrorText = 'Can\'t be empty';
                    }else{
                      locationErrorText = '';
                    }
                    setState(() {});
                  },
                  context: context),
              locationErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),
                child: Text(locationErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
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
                        if(nameController.text.isEmpty){
                          nameErrorText = 'Can\'t be empty';
                        }else if(phoneNumberController.text.isEmpty){
                          numberErrorText = 'Can\'t be empty';
                        }else if(specialityController.text.isEmpty){
                          specialityErrorText = 'Can\'t be empty';
                        }else if(emailController.text.isEmpty){
                          emailErrorText = 'Can\'t be empty';
                        }else if(locationController.text.isEmpty){
                          locationErrorText = 'Can\'t be empty';
                        }
                        setState(() {});
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.055,
                        decoration: BoxDecoration(
                          color: calenderColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            'Save',
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
      ),
    );
  }
}
