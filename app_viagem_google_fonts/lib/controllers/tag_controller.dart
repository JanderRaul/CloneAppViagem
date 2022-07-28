import 'package:app_viagem_google_fonts/models/tag_model.dart';

class TagController {
  List<Tag> fetchTags() {
    var tagList = <Tag>[
      Tag(name: 'Family Trip', selected: true),
      Tag(name: 'With Kids', selected: false),
      Tag(name: 'Bus Tour', selected: false),
      Tag(name: 'Discont Hotel', selected: false),
    ];
    return tagList;
  }
}
