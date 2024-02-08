import 'package:kamon_app_client/utils/from_position_to_latlng.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kamon_app_client/constants.dart';

final geoLocatorProvider = StreamProvider.autoDispose<Position>((ref) async* {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
  }
  if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
    yield* Geolocator.getPositionStream();
  }
  if (permission == LocationPermission.deniedForever) {
    yield* Stream.error("位置情報が有効ではありません");
  }
});

final currentProvider = StateProvider<LatLng>((ref) {
  return kyotoStationLatLng;
});

final currentPositionProvider = Provider.autoDispose<LatLng>((ref) {
  final p = ref.read(geoLocatorProvider);
  return p.when(
    loading: () => kyotoStationLatLng,
    error: (error, stackTrace) => kyotoStationLatLng,
    data: (data) => fromPositionToLatlng(data),
  );
});
