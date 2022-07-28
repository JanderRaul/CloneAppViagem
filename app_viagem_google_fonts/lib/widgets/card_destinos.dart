import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDestinos extends StatelessWidget {
  const CardDestinos({
    Key? key, required this.image, required this.continent,
  }) : super(key: key);

  final String image;
  final String continent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 330,
          width: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  offset: const Offset(3.0, 3.0),
                  blurRadius: 5.0,
                  spreadRadius: 2.0,
                ),
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 12,
          top: 12,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),
                child: Text(
                  continent,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
