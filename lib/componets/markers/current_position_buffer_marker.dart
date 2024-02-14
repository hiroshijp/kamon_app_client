import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CurrentPositionBufferMarker extends CircleMarker {
  final LatLng latLng;
  CurrentPositionBufferMarker({
    Key? key,
    required this.latLng,
  }) : super(
          point: latLng,
          radius: 100.0,
          useRadiusInMeter: true,
          color: Colors.lightBlue.withOpacity(0.1),
        );
}
