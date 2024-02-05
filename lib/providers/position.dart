import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:geolocator/geolocator.dart';

final currentPositionProvider = StreamProvider<Position>((ref) async* {
  LocationPermission permission = await Geolocator.checkPermission();
  if(permission == LocationPermission.denied){
    permission = await Geolocator.requestPermission();
  }
  if(permission == LocationPermission.always || permission == LocationPermission.whileInUse){
    yield* Geolocator.getPositionStream();
  }
  if(permission == LocationPermission.deniedForever){
    yield* Stream.error("位置情報が有効ではありません");
  }
  
});
