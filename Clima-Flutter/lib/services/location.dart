import 'package:geolocator/geolocator.dart';

class Location {
  double latitute;
  double longitude;
  Location({this.latitute, this.longitude});

  Future getCurrentLocation() async {
    // LocationPermission permission1 = await Geolocator.checkPermission();
    // LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitute = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
