import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedBox extends StatelessWidget {
  const RoundedBox({
    Key? key,
    required this.label,
    required this.child
  }) : super(key: key);

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffC0CCDA),
            borderRadius: BorderRadius.circular(20)
        ),
        height: 40,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
              child
            ],
          ),
        ),
      ),
    );
  }
}