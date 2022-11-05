import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medicine/constants/appConst.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> days = ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'];
  List<String> date = ['18','19','20','21','22','23','24'];
  List<String> reasonsForSkipping = [
    'Forgot to take',
    'Ran out of med',
    'Med isn\'t near me',
    'Don\'t need of it',
    'Fear of side effects',
    'Worried about cost',
    'Others'
  ];

  List<String> medTaken = [
    'On time',
    'Now'
  ];
  int selectedTime = -1;
  bool skip = false;
  bool takeMed = false;
  bool medReschedule = false;
  DateTime scheduledDate = DateTime.now();
  final List<String> _selectedItems = [];
  final List<String> _selectedItemsMedTaken = [];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 45,
        height: 45,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: calenderColor,
            child: Icon(
              Icons.add,
              size: 50,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPath(
                  clipper: Customshape(),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration:  BoxDecoration(
                      color: appColor.withOpacity(.58),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/icons/profile_icon.png'),
                          Padding(
                            padding:  const EdgeInsets.only(top: 20.0),
                            child: Column(
                              children: [
                                Text(
                                  'Welcome Back,',
                                  style: GoogleFonts.openSans(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Ahsan',
                                  style: GoogleFonts.openSans(
                                      fontSize: 19,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,right: 10),
                            child: Image.asset('assets/icons/notification_icon.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.011),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.112,
                              // height: MediaQuery.of(context).size.height * 0.08,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: _currentIndex == index ?  calenderColor : Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    days[index],
                                    style: GoogleFonts.openSans(
                                        fontSize: 11,
                                        color: _currentIndex == index ? Colors.white : yellowishColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    date[index],
                                    style: GoogleFonts.openSans(
                                        fontSize: 11,
                                        color: _currentIndex == index ? Colors.white : yellowishColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Today, 21 April',
                    style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: .3,
                  child: Container(
                    width: double.infinity,
                    height: 5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'My today activities',
                    style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      'Mark All Doses',
                      style: GoogleFonts.openSans(
                          fontSize: 11,
                          color: brownishColor,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.09),
                              child: Text(
                                '12:00 AM',
                                style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.07),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: .2,color: Colors.black38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset('assets/icons/capsule_icon.png'),
                                        Column(
                                          children: [
                                            Text(
                                              'Paracetamol',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 14,
                                                  color: tabIconColor,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '20g, take 2 pill(s)',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 8,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.03,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                border: Border.all(width: .5,color: Colors.blue),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.close,
                                                  color: tabIconColor,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  skip = true;
                                                });
                                              },
                                              child: Text(
                                                'Skip',
                                                style: GoogleFonts.openSans(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                border: Border.all(width: .5,color: Colors.blue),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.check,
                                                  size: 20,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  takeMed = true;
                                                });
                                              },
                                              child: Text(
                                                'Take',
                                                style: GoogleFonts.openSans(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                border: Border.all(width: .5,color: Colors.blue),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.event,
                                                  color: appColor,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  medReschedule = true;
                                                });
                                              },
                                              child: Text(
                                                'Reschedule',
                                                style: GoogleFonts.openSans(
                                                    fontSize: 10,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },),
                )
              ],
            ),
            skip ? Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.85),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: brownishColor,width: .2)
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  skip = false;
                                });
                              },
                              child: Icon(
                                Icons.arrow_back_sharp,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Why are you skipping this dose?',
                              style: GoogleFonts.openSans(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: reasonsForSkipping.length,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return CheckboxListTile(
                                side: BorderSide(color: Colors.black38),
                                dense: true,
                                checkColor: Colors.green,
                                activeColor: Colors.white,
                                value: _selectedItems.contains(reasonsForSkipping[index]),
                                title: Text(reasonsForSkipping[index],
                                style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400
                                ),),
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (isChecked) => _itemChange(reasonsForSkipping[index], isChecked!),
                              );
                            },),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              skip = false;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              color: appColor.withOpacity(.8),
                              borderRadius: BorderRadius.circular(10),
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
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ) : Container(),
            takeMed ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.85),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: brownishColor,width: .2)
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    takeMed = false;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_sharp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'When did you take this med?',
                                style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: medTaken.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return CheckboxListTile(
                                  side: BorderSide(color: Colors.black38),
                                  dense: true,
                                  checkColor: Colors.green,
                                  activeColor: Colors.white,
                                  value: _selectedItemsMedTaken.contains(medTaken[index]),
                                  title: Text(medTaken[index],
                                    style: GoogleFonts.openSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400
                                    ),),
                                  controlAffinity: ListTileControlAffinity.leading,
                                  onChanged: (isChecked) => _itemChangeMedList(medTaken[index], isChecked!),
                                );
                              },),
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                takeMed = false;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                color: appColor.withOpacity(.8),
                                borderRadius: BorderRadius.circular(10),
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
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ) : Container(),
            medReschedule ? Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.85),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: brownishColor,width: .2)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    medReschedule = false;
                                  });
                                },
                                child: Icon(
                                  Icons.arrow_back_sharp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Reschedule for',
                                style: GoogleFonts.openSans(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Enter date',
                              style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            elevation: 1,
                            child: Container(
                              height: 50,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Text(
                                        DateFormat("dd MMM").format(scheduledDate),
                                      style: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: ()async{
                                      DateTime? time = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2022),
                                          lastDate: DateTime(2025));
                                      if(time != null){
                                        setState(() {
                                          scheduledDate = time;
                                        });
                                      }
                                    },
                                    child: Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: lightColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Enter Time',
                              style: GoogleFonts.openSans(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            elevation: 1,
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 150,
                                  child: TextFormField(
                                    // controller: _emailController,
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.done,
                                    decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(left: 10),
                                      hintText: 'Hour',
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 150,
                                  child: TextFormField(
                                    // controller: _emailController,
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.done,
                                    decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: 'Min',
                                      hintStyle: GoogleFonts.openSans(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox(),),
                                Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: selectedTime == 1 ? appColor.withOpacity(.30) : Colors.white
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              selectedTime = 1;
                                            });
                                          },
                                          child: Text(
                                            'AM',
                                            style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),Container(
                                      width: 40,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: selectedTime == 2 ? appColor.withOpacity(.30) : Colors.white
                                      ),
                                      child: Center(
                                        child: GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              selectedTime = 2;
                                            });
                                          },
                                          child: Text(
                                            'PM',
                                            style: GoogleFonts.openSans(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                medReschedule = false;
                              });
                            },
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                height: MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: appColor.withOpacity(.8),
                                  borderRadius: BorderRadius.circular(10),
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
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
            ) : Container(),
          ],
        )
      ),
    );
  }

  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue.trim());
      } else {
        _selectedItems.remove(itemValue.trim());
      }
    });
  }
  void _itemChangeMedList(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItemsMedTaken.add(itemValue.trim());
      } else {
        _selectedItemsMedTaken.remove(itemValue.trim());
      }
    });
  }
}


class Customshape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height-50);
    path.quadraticBezierTo(width/2, height, width, height-50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}