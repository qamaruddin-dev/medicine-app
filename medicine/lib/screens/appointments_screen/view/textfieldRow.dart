import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicine/constants/appConst.dart';

Widget textFieldRow({required String iconString,required TextInputType inputType,required TextInputAction textAction,
required String hintText, required TextEditingController controller,required BuildContext context}){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.06),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(iconString).image,
            )
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Expanded(
          child: TextField(
            controller: controller,
            cursorColor: brownishColor,
            keyboardType: inputType,
            textInputAction: textAction,
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText,
              hintStyle: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(.26)
              ),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: brownishColor,width: 1.3)
              ),
              focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: brownishColor,width: 1.3)
              ),
              errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: brownishColor,width: 1.3)
              ),
              focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: brownishColor,width: 1.3)
              ),
              border: const UnderlineInputBorder(
                  borderSide: BorderSide(color: brownishColor,width: 1.3)
              ),
              disabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: brownishColor,width: 1.3)
              ),
            ),
          ),
        )
      ],
    ),
  );
}
