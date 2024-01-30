import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../models/crest/crest.dart';

class CrestMarker extends Marker {
  final Crest crest;
  CrestMarker({
    Key? key,
    required this.crest,
  }) : super(
          height: 40,
          width: 40,
          point: LatLng(crest.latitude, crest.longitude),
          child: _cusromIcon(),
        );
}

Widget _cusromIcon() {
  return GestureDetector(
    child: const Icon(
      Icons.location_on,
    ),
    onTap: () {
      debugPrint("tapped");
    },
  );
}
