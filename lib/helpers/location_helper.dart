// ignore: constant_identifier_names
const GOOGLE_API_KEY = 'AIzaSyCZkNeDT5lz3jFnfTtoVjcKs8J9tcBM_s0';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double? latitude, double? longtitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longtitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:D%7C$latitude,$longtitude&key=$GOOGLE_API_KEY';
  }
}
