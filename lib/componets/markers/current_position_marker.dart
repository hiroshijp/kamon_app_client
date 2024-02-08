import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CurrentPositionMarker extends Marker {
  final LatLng latLng;
  CurrentPositionMarker({
    Key? key,
    required this.latLng,
  }) : super(
          point: latLng,
          height: 15,
          width: 15,
          child: _marker,
        );

  static final Widget _marker = Container(
    decoration: const BoxDecoration(
      color: Color.fromRGBO(33, 32, 156, 1),
      shape: BoxShape.circle,
    ),
  );
}
