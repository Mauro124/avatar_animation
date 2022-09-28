import 'package:animations/core/styles/colors_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final kReleaseHeadline =
    kHeadline4.copyWith(color: kWhiteColor, fontFamily: 'Overpass', fontWeight: FontWeight.w500, letterSpacing: 6);
final kWatcherHeadline =
    kHeadline4.copyWith(color: kGreenColor, fontFamily: 'Overpass', fontWeight: FontWeight.w300, letterSpacing: 3);

final kSectionTitle = kHeadline6;

final kGameTitle = kBodyText1.copyWith(fontWeight: FontWeight.w500, fontSize: 16.sm);
final kGameSubtitle = kSubtitle1.copyWith(color: kGrayColor, fontSize: 12.sm);
final kGameVersion = kCaption.copyWith(color: kGrayColor, fontSize: 12.sm);
final kInputHint = kSubtitle1.copyWith(color: kGrayColor, fontSize: 14.sm);
final kInputText = kSubtitle1.copyWith(color: kWhiteColor, fontSize: 14.sm);
final kTagsChip = kSubtitle2.copyWith(color: kLightBlueColor, fontSize: 12.sm);
final kVersionList = kSubtitle1.copyWith(color: Colors.white, fontSize: 12.sm);

final kReleaseAppbar = kHeadline5.copyWith(color: Colors.white, fontFamily: 'Overpass', fontWeight: FontWeight.w500);
final kWatcherAppbar = kHeadline5.copyWith(color: kGreenColor, fontFamily: 'Overpass', fontWeight: FontWeight.w300);

var kHeadline1 = TextStyle(fontSize: 96.0.sm, fontWeight: FontWeight.w300, letterSpacing: -1.5);
var kHeadline2 = TextStyle(fontSize: 60.0.sm, fontWeight: FontWeight.w300, letterSpacing: -0.5);
var kHeadline3 = TextStyle(fontSize: 48.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.0);
var kHeadline4 = TextStyle(fontSize: 34.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.25);
var kHeadline5 = TextStyle(fontSize: 18.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.0);
var kHeadline6 = TextStyle(fontSize: 14.0.sm, fontWeight: FontWeight.w500, letterSpacing: 0.15);
var kSubtitle1 = TextStyle(fontSize: 16.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.25);
var kSubtitle2 = TextStyle(fontSize: 11.0.sm, fontWeight: FontWeight.w500, letterSpacing: 0.1);
var kBodyText1 = TextStyle(fontSize: 14.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.5);
var kBodyText2 = TextStyle(fontSize: 18.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.25);
var kButton = TextStyle(fontSize: 14.0.sm, fontWeight: FontWeight.w500, letterSpacing: 1.25);
var kCaption = TextStyle(fontSize: 11.0.sm, fontWeight: FontWeight.w400, letterSpacing: 0.4);
var kOverline = TextStyle(fontSize: 10.0.sm, fontWeight: FontWeight.w400, letterSpacing: 1.5);
