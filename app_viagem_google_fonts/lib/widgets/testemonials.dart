import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.pink,
                ),
              ),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.white,
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    'assets/person.jpg',
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                  ))
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black38),
              ),
              softWrap: true,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
