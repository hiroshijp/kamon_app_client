import 'package:kamon_app_client/utils/from_position_to_latlng.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kamon_app_client/constants.dart';

final currentPositionProvider = StreamProvider<Position>((ref) async* {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  if (permission == LocationPermission.always ||
      permission == LocationPermission.whileInUse) {
    yield* Geolocator.getPositionStream();
  }
  if (permission == LocationPermission.deniedForever) {
    yield* Stream.error("位置情報が有効ではありません");
  }
});

final currentProvider = StateProvider<LatLng>((ref) {
  return kyotoStationLatLng;
});

final nowProvider = Provider<LatLng>((ref) {
  final p = ref.watch(currentPositionProvider);
  return p.when(
    loading: () => kyotoStationLatLng,
    error: (error, stackTrace) => kyotoStationLatLng,
    data: (data) => fromPositionToLatlng(data),
  );
});
