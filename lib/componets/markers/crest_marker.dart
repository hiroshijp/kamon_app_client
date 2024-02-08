import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../models/crest/crest.dart';

class CrestMarker extends Marker {
  final LatLng latLng;
  CrestMarker({
    Key? key,
    required this.latLng,
  }) : super(
          key: key,
          height: 100,
          width: 100,
          point: latLng,
          child: _customIcon,
        );

  static final _customIcon = Container(
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      border: Border.all(
        color: const Color.fromRGBO(253, 184, 39, 1),
        width: 7,
      ),
      image: const DecorationImage(
        image: AssetImage("sample.png"),
      ),
    ),
  );
}
