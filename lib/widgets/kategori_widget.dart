// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KategoriWidget extends StatelessWidget {
  var title;
  bool status;

  KategoriWidget({Key? key, required this.title, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 33, minWidth: 70),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: status ? const Color(0xff9A9390) : null,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
                color: status ? Colors.white : Colors.black,
                fontSize: 12,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
        ),
      ),
    );
  }
}
