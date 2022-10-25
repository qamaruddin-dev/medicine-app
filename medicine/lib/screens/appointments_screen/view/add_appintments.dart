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
              Container(
                width: MediaQuery.of(context).size.width * 0.11,
                height: MediaQuery.of(context).size.width * 0.11,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset('assets/icons/appointment_icon.png').image,
                )),
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
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Select Doctor',
                  controller: doctorController,
                  textAction: TextInputAction.next,
                  inputType: TextInputType.text,
                  iconString: 'assets/icons/select.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Date',
                  controller: dateController,
                  inputType: TextInputType.datetime,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/calender.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Set Reminder',
                  controller: reminderController,
                  inputType: TextInputType.datetime,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/alarm_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Add Location',
                  controller: locationController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.next,
                  iconString: 'assets/icons/location_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              textFieldRow(
                  hintText: 'Add Notes',
                  controller: notesController,
                  inputType: TextInputType.text,
                  textAction: TextInputAction.done,
                  iconString: 'assets/icons/outline_icon.png',
                  context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
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
