
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({double? size, Color? color, FontWeight? fontWeight,}) {
   return GoogleFonts.montserrat(
    color: color ?? Colors.white,
    fontSize: size ?? 18,
    fontWeight: fontWeight ?? FontWeight.normal,
  );
}