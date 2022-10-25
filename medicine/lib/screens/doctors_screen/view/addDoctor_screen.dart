import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
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
              Container(
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.width * 0.11,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset('assets/icons/doctor_image.png').image,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Doctor\'s Name',
                  controller: nameController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/docName_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Phone Number',
                  controller: phoneNumberController,
                  inputType: TextInputType.phone,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/telephone_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Speciality',
                  controller: specialityController,
                  textAction: TextInputAction.next,
                  inputType: TextInputType.text,
                  iconString: 'assets/icons/speciality_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Email',
                  controller: emailController,
                  textAction: TextInputAction.next,
                  inputType: TextInputType.emailAddress,
                  iconString: 'assets/icons/email_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Location',
                  controller: locationController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.done,
                  iconString: 'assets/icons/location_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.19,
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
