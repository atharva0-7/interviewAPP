import 'package:flutter/material.dart';

const kADDBUTTON =
    TextStyle(decoration: TextDecoration.underline, color: Colors.black);
const kNEXTBUTTON = TextStyle(fontSize: 15);

const kNEXTBUTTONICON = Icon(
  Icons.arrow_forward_ios,
  size: 13,
);

const kSCAFFOLDBACKGROUNDCOLOR = Color.fromARGB(255, 204, 205, 209);
const kCARDCOLOR = Color.fromARGB(255, 0, 54, 204);
const kTITLE =
    TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.w600);
const kSEARCHBARICON = Icon(
  Icons.search_sharp,
  color: Colors.black,
);

const kSEARCHBARDECORATION = InputDecoration(
    // border: OutlineInputBorder(),
    suffixIcon: kSEARCHBARICON,
    hintText: "Search Interviewers",
    contentPadding: EdgeInsets.all(15),
    hintStyle: TextStyle(fontSize: 15));

const kINTERVIEWERCOUNT =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black45);

const kCHANGEBUTTON = Text(
  "CHANGE",
  style: TextStyle(
    color: Colors.white,
    decoration: TextDecoration.underline,
  ),
);

const kBOTTOMCIRCULARCONTAINER = BoxDecoration(
  color: Colors.grey,
  borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
);

const kCARDTITLESTYLE =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);

const kWHATMADEAWEOMETEXT = Text(
  "What made the interviewers awesome?",
  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
);

const kADDCOMMENTBUTTONTEXT = Text(
  "ADD COMMENT",
  style: TextStyle(
    color: Colors.black,
    decoration: TextDecoration.underline,
  ),
);
const kSKIPBUTTONTEXT = Text(
  "SKIP",
  style: TextStyle(
    color: Colors.black,
    decoration: TextDecoration.underline,
  ),
);

const kHINTTEXTSTYLE = InputDecoration(
    counterText: "",
    border: InputBorder.none,
    hintText: "Write your review ",
    hintStyle: TextStyle(fontSize: 25));
const kGOBACKTEXT = Text(
  "GO BACK",
  style: TextStyle(decoration: TextDecoration.underline, color: Colors.black),
);
const kHOMETEXT = Text(
  "HOME",
  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),
);
