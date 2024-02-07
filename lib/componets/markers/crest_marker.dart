import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../models/crest/crest.dart';

class CrestMarker extends Marker {
  // final Crest crest;
  CrestMarker({
    Key? key,
    // required this.crest,
  }) : super(
          height: 100,
          width: 100,
          point: LatLng(35.7100069, 139.8108103),
          child: _customIcon,
        );

  static final _customIcon = Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      border: Border(
        top: BorderSide(
          color: Colors.black,
          width: 3,
        ),
        left: BorderSide(
          color: Colors.black,
          width: 3,
        ),
        right: BorderSide(
          color: Colors.black,
          width: 3,
        ),
        bottom: BorderSide(
          color: Colors.black,
          width: 3,
        ),
      ),
      image: DecorationImage(
        image: AssetImage("sample_1.jpg"),
      ),
    ),
  );
}
