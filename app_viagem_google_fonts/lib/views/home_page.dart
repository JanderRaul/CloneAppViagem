import 'package:app_viagem_google_fonts/controllers/places_controller.dart';
import 'package:app_viagem_google_fonts/controllers/tag_controller.dart';
import 'package:app_viagem_google_fonts/widgets/card_destinos.dart';
import 'package:app_viagem_google_fonts/widgets/testemonials.dart';
import 'package:app_viagem_google_fonts/widgets/title_tags.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _recomended() {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Text(
            'Recommend by 116 Users',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
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
          ),
        ],
      ),
    );
  }

  Widget _moreTags() {
    return Text(
      'More Tags',
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black38,
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'Popular Now',
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _tops() {
    return Text(
      'Top 100',
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black38),
      ),
    );
  }

  var tagList = TagController().fetchTags();
  var placesList = PlacesController().fetchPlaces();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.apps))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _title(),
              const SizedBox(height: 8),
              _tops(),
              const SizedBox(height: 16),
              SizedBox(
                height: 340,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: placesList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: CardDestinos(
                          image: placesList[index].image!,
                          continent: placesList[index].continent!,
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 16),
              _recomended(),
              const SizedBox(height: 8),
              const Divider(
                thickness: 3,
                color: Colors.black,
                endIndent: 350,
              ),
              const SizedBox(height: 16),
              const Testimonials(),
              const SizedBox(height: 32),
              _moreTags(),
              const SizedBox(height: 16),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tagList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TitleTags(
                        name: tagList[index].name!,
                        isSelected: tagList[index].selected!,
                        onTap: () {
                          setState(() {
                            for (var element in tagList) {
                              element.selected = false;
                            }
                            tagList[index].selected = true;
                          });
                        },
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
