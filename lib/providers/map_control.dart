import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapControllerNotifier extends StateNotifier<MapController> {
  MapControllerNotifier() : super(MapController());

  void setCamera(LatLng location) {
    state.move(location, state.camera.zoom);
  }
}

final mapControllerProvider = StateNotifierProvider<MapControllerNotifier, MapController>((ref) {
  return MapControllerNotifier();
});
