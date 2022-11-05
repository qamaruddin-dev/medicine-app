import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';
import 'package:medicine/screens/appointments_screen/view/textfieldRow.dart';

class AddAppointments extends StatefulWidget {
  const AddAppointments({Key? key}) : super(key: key);

  @override
  _AddAppointmentsState createState() => _AddAppointmentsState();
}

class _AddAppointmentsState extends State<AddAppointments> {
  final titleController = TextEditingController();
  final doctorController = TextEditingController();
  final dateController = TextEditingController();
  final reminderController = TextEditingController();
  final locationController = TextEditingController();
  final notesController = TextEditingController();
  String titleErrorText = '';
  String doctorErrorText = '';
  String dateErrorText= '';
  String reminderErrorText = '';
  String locationErrorText = '';
  String notesErrorText = '';

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
                      'Add Appointments',
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
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.11,
                  height: MediaQuery.of(context).size.width * 0.11,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset('assets/icons/appointment_icon.png').image,
                  )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Appointment title',
                  controller: titleController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/appointTitle_icon.png',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      setState(() {
                        titleErrorText = 'Can\'t be empty';
                      });
                    }
                  },
                  context: context),
              titleErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),
                child: Text(titleErrorText,
                style: GoogleFonts.openSans(
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.w500
                ),),
              ),
              textFieldRow(
                  hintText: 'Select Doctor',
                  controller: doctorController,
                  textAction: TextInputAction.next,
                  inputType: TextInputType.text,
                  iconString: 'assets/icons/select.png',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      setState(() {
                        doctorErrorText = 'Can\'t be empty';
                      });
                    }
                  },
                  context: context),
              doctorErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),                child: Text(doctorErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Date',
                  controller: dateController,
                  inputType: TextInputType.datetime,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/calender.png',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      setState(() {
                        dateErrorText = 'Can\'t be empty';
                      });
                    }
                  },
                  context: context),
              dateErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),                child: Text(dateErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Set Reminder',
                  controller: reminderController,
                  inputType: TextInputType.datetime,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/alarm_icon.png',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      setState(() {
                        reminderErrorText = 'Can\'t be empty';
                      });
                    }
                  },
                  context: context),
              reminderErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),                child: Text(reminderErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Add Location',
                  controller: locationController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/location_icon.png',
                  onChange: (String? val){
                    if(val!.isEmpty){
                      setState(() {
                        locationErrorText = 'Can\'t be empty';
                      });
                    }
                  },
                  context: context),
              locationErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),                child: Text(locationErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              textFieldRow(
                  hintText: 'Add Notes',
                  controller: notesController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.done,
                  onChange: (String? val){
                    if(val!.isEmpty){
                      setState(() {
                        notesErrorText = 'Can\'t be empty';
                      });
                    }
                  },
                  iconString: 'assets/icons/outline_icon.png',
                  context: context),
              notesErrorText.isEmpty ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ) : Padding(
                padding: EdgeInsets.only(top: 7,
                    left: MediaQuery.of(context).size.width * 0.18),                child: Text(notesErrorText,
                  style: GoogleFonts.openSans(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w500
                  ),),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
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
                        if(titleController.text.isEmpty){
                          titleErrorText = 'Can\'t be empty';
                        }else if(doctorController.text.isEmpty){
                          doctorErrorText = 'Can\'t be empty';
                        }else if(dateController.text.isEmpty){
                          dateErrorText = 'Can\'t be empty';
                        }else if(reminderController.text.isEmpty){
                          reminderErrorText = 'Can\'t be empty';
                        }else if(locationController.text.isEmpty){
                          locationErrorText = 'Can\'t be empty';
                        }else if(notesController.text.isEmpty){
                          notesErrorText = 'Can\'t be empty';
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
