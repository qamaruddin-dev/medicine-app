

import 'package:flutter/material.dart';

const appColor = Color(0xFF637EC1);
const tabColor = Color(0xFF8B9FD5);
const buttonColor = Color(0xFF95AEF1);
const tabIconColor = Color(0xFFD58B8B);
const brownishColor = Color(0xff707070);
const yellowishColor = Color(0xffE8B070);
const pillColor = Color(0xffE37B2B);
const appGreenColor = Color(0xffA0DE0E);
const calenderColor = Color(0xffA4B4DB);
const darkButtonColor = Color(0xff547DE9);
const settingFontColor = Color(0xff3060BF);
const containerColor = Color(0xffA6B5DC);
const lightColor = Color(0xffC0BDC9);

showToast({required String text,required BuildContext context}){
  final snackBar = SnackBar(content: Text(text,style: const TextStyle(
      color: Colors.black87
  ),),
    backgroundColor: Colors.red,);
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
