import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

LatLng fromPositionToLatlng(Position position) {
  return LatLng(position.latitude, position.longitude);
}
