import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({
  FontWeight fontWeight = FontWeight.w500,
  Color color = Colors.black,
  double fontSize = 12,
}) {
  return GoogleFonts.montserrat(
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
  );
}
