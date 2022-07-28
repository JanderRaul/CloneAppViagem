import 'package:app_viagem_google_fonts/models/places_models.dart';

class PlacesController {
  List<Places> fetchPlaces() {
    var placesList = <Places>[
      Places(
        image: 'assets/veneza.jpg',
        continent: 'Europe'
      ),
      Places(
        image: 'assets/japan.jpg',
        continent: 'Asia'
      ),
      Places(
        image: 'assets/brasil.jpg',
        continent: 'South America'
      ),
    ];
    return placesList;
  }
}
