
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget rowForBasicSettingIconText({required String text, required String image,required BuildContext context,required Function() onTab}){
  return Row(
   children: [
     Image.asset(image),
     SizedBox(
       width: MediaQuery.of(context).size.height * 0.04,
     ),
     GestureDetector(
       onTap: onTab,
       child: Text(
         text,
         style: GoogleFonts.openSans(
             fontSize: 15,
             color: Colors.black,
             fontWeight: FontWeight.w400),
       ),
     )
   ],
 );
}