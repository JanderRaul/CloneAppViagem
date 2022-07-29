import 'package:flutter/material.dart';

class ImageDestination extends StatelessWidget {
  const ImageDestination({
    Key? key, required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 10),
      child: Container(
        height: 260,
        width: 320,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(25), boxShadow: [
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
    );
  }
}
