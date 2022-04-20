import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 24;

Color primaryColor = const Color(0xffEEEEEE);
Color secondaryColor = const Color(0xffFFFFFF);
Color accentColor = const Color(0xffFF6464);
Color toggleColor = const Color(0xff60D141);

Color primaryTextColor = const Color(0xff000000);
Color nameTextColor = const Color(0xff60D141);
Color headerTextColor = const Color(0xffFFFFFF);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

const double xSmallFs = 10;
const double smallFs = 12;
const double baseFs = 14;
const double mediumFs = 16;
const double titleFs = 20;

TextStyle primaryTextStyle = GoogleFonts.poppins(color: primaryTextColor);
TextStyle nameTextStyle = GoogleFonts.poppins(color: nameTextColor, fontSize: smallFs);
TextStyle titleTextStyle = GoogleFonts.poppins(color: primaryTextColor, fontSize: titleFs, fontWeight: bold);
TextStyle headerTextStyle = GoogleFonts.poppins(color: headerTextColor, fontSize: mediumFs);
TextStyle attributeTextStyle = GoogleFonts.poppins(color: primaryTextColor, fontSize: xSmallFs);

