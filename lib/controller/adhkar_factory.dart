import 'package:adhkar/data/adhkar.data.dart';
import 'package:adhkar/models/adhkar.model.dart';

class AdhkarFactory {
  static dynamic getAdhkar({String adhkarId = ""}) {
    try {
      if (adhkarId.isNotEmpty) {
        Adhkar response =
            adhkarData.firstWhere((adhkar) => adhkar.id == adhkarId);
        return response;
      } else {
        List<Adhkar> adhkars = [];
        for (var i = 0; i < adhkarData.length; i++) {
          adhkars.add(adhkarData[i]);
        }
        return adhkars;
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  static List<String> getAllAdhkarId() {
    try {
      List<String> response = [];
      for (var i = 0; i < adhkarData.length; i++) {
        response.add(adhkarData[i].id);
      }
      return response;
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
