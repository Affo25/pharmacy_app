

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/app_colors.dart';

class customInputField extends StatelessWidget{

  final TextEditingController? controller;
  final String textValue;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  final IconData icon;
   customInputField({super.key, this.controller, required this.textValue, required this.keyboardType, this.textInputAction, required this.icon});
  @override
  Widget build(BuildContext context) {
    return  TextField(
      enabled: true,
      cursorColor: kcVeryLightGrey,
      cursorHeight: 23,
      style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400
      ),
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: TextAlign.start,
       decoration: InputDecoration(
         prefixIcon: Icon(icon),
         hintText: textValue,
         border: InputBorder.none,
           hintStyle: GoogleFonts.ubuntu(
             fontSize: 12,
                 fontWeight: FontWeight.w600
           ),
       ),
    );
  }

  // bool isValidEmail(  controller) {
  //   // Regular expression for email validation
  //   final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  //
  //   return emailRegex.hasMatch( controller);
  // }

}

class passInputField extends StatelessWidget{

  final TextEditingController? controller;
  final String textValue;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  final IconData icon;
  final  bool showPass;
  final IconData suffixIcon;
  passInputField({super.key, this.controller, required this.textValue, required this.keyboardType, this.textInputAction, required this.icon, required this.showPass, required this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    return  TextField(
      obscureText: showPass,
      enabled: true,
      cursorColor: kcVeryLightGrey,
      cursorHeight: 23,
      style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400
      ),
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(icon),
        hintText: textValue,
        border: InputBorder.none,
        hintStyle: GoogleFonts.ubuntu(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }

// bool isValidEmail(  controller) {
//   // Regular expression for email validation
//   final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
//
//   return emailRegex.hasMatch( controller);
// }

}

class InputFieldWithIcon extends StatelessWidget{

  final TextEditingController? controller;
  final String textValue;
  
final IconData icon;
  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  const InputFieldWithIcon({super.key, this.controller, required this.textValue, required this.keyboardType, this.textInputAction, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: 10,
      minLines: 4,
      enabled: true,
      cursorColor: kcVeryLightGrey,
      cursorHeight: 23,
      style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400
      ),
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        icon: Icon(icon),
        hintText: textValue,
        border: InputBorder.none,
        hintStyle: GoogleFonts.ubuntu(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      ),
    );
  }

}


class InputFieldWithSuffixIcon extends StatelessWidget{

  final TextEditingController? controller;
  final String textValue;

  final IconData suffixIcon;

  final TextInputAction? textInputAction;
  final TextInputType keyboardType;
  const InputFieldWithSuffixIcon({super.key, this.controller, required this.textValue, required this.keyboardType, this.textInputAction, required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      enabled: true,
      cursorColor: kcVeryLightGrey,
      cursorHeight: 23,
      style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400
      ),
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: textValue,
        border: InputBorder.none,
        hintStyle: GoogleFonts.ubuntu(
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
        suffixIcon: Icon(suffixIcon,color: primaryColor,),
      ),
    );
  }

}

