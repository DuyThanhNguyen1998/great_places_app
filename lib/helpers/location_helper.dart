import 'dart:convert';

import 'package:http/http.dart' as http;

// ignore: constant_identifier_names
const String MAPS_API_KEY = 'AIzaSyCZkNeDT5lz3jFnfTtoVjcKs8J9tcBM_s0';
// ignore: constant_identifier_names
const String ANDROID_KEY = 'AIzaSyCBnRkq8ex9pz_7vFbZojVObDqw_k_9Jr8';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double? latitude, double? longtitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longtitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:D%7C$latitude,$longtitude&key=$MAPS_API_KEY';
  }

  static Future<String> getPlaceAddress(double lat, double lng) async {
    final url = Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?latlng=$lat,$lng&key=$ANDROID_KEY');
    final response = await http.get(url);
    return json.decode(response.body)['results'][0]['formatted_address'];
  }
}
