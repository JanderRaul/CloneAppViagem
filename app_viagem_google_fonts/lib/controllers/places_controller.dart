import 'package:app_viagem_google_fonts/models/places_models.dart';

class PlacesController {
  List<Places> fetchPlaces() {
    var placesList = <Places>[
      Places(
        name: 'Veneza, Italy',
        image: [
          'assets/veneza.jpg',
          'assets/veneza2.jpg',
        ],
        continent: 'Europe',
      ),
      Places(
        name: 'Fujiyoshida, Japan',
        image: [
          'assets/japan.jpg',
          'assets/japan2.jpg',
          'assets/japan3.jpg',
        ],
        continent: 'Asia',
      ),
      Places(
        name: 'Rio de Janeiro, Brazil',
        image: [
          'assets/brasil.jpg',
          'assets/brasil2.jpg',
        ],
        continent: 'South America',
      ),
    ];
    return placesList;
  }
}
