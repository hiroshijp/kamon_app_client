import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../models/crest/crest.dart';

class CrestMarker extends Marker{
  final Crest crest;
  CrestMarker({
    required this.crest
  }) : super(
    height: 40,
    width: 40,
    point: LatLng(crest.latitude, crest.longitude),
    child: Icon(
      Icons.location_on,
      color: Colors.red,
      // ここでピンのサイズを調整
      size: 50,
    ),
  );
}
