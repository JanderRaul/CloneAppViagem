import 'package:app_viagem_google_fonts/models/places_models.dart';
import 'package:app_viagem_google_fonts/widgets/image_destination.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key, required this.place}) : super(key: key);

  final Places place;

  _title() {
    return Text(
      place.name!,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  _apartaments() {
    return Text(
      'APARTAMENTS',
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.pinkAccent,
          letterSpacing: 0.01,
        ),
      ),
    );
  }

  _avarage() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  '4.6',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Text(
              'Avarage \nRating',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2443 apt.',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Available \non Airbnb.com',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: () {},
          iconSize: 28,
          color: Colors.grey,
          icon: const Icon(Icons.arrow_forward),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  final List<String> optionsList = [
    'HOTELS',
    'RESTAURANTS',
    'TICKETS',
    'FIND FRIENDS',
    'EVENTS',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.apps),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: place.image!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ImageDestination(image: place.image![index],);
                    }),
              ),
              const SizedBox(height: 16),
              _title(),
              const SizedBox(height: 16),
              _apartaments(),
              const SizedBox(height: 16),
              _avarage(),
              const SizedBox(height: 32),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: optionsList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Text(
                          optionsList[index],
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                              letterSpacing: 0.01,
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.pinkAccent,
            onPressed: () {},
            child: const Icon(
              Icons.airplanemode_active,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ),
    );
  }
}
