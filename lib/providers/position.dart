import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';

final currentPositionProvider = StreamProvider<Position>((ref) async* {
  if (await Geolocator.isLocationServiceEnabled()) {
    yield* Geolocator.getPositionStream();
  }
  final permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
    yield* Geolocator.getPositionStream();
  }
});
