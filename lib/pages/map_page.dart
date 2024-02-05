import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kamon_app_client/providers/crest/crest_list_provider.dart';
import 'package:kamon_app_client/providers/position.dart';
import 'package:kamon_app_client/componets/crest_marker.dart';
import 'package:kamon_app_client/utils/from_position_to_latlng.dart';
import 'package:kamon_app_client/constants.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  @override
  Widget build(BuildContext context) {
    final MapController mapController = MapController();
    final currentPosition = ref.watch(currentPositionProvider);
    return Scaffold(
          appBar: null,
          body: currentPosition.when(
            error: (err, _) => Center(child: Text(err.toString())),
            loading: () => const Center(child: CircularProgressIndicator(),),
            data: (data) => FlutterMap(
              options: MapOptions(
                initialCenter: fromPositionToLatlng(data),
                initialZoom: 16.0,
              ),
              mapController: mapController,
              children: [
                TileLayer(
                  urlTemplate: 'https://api.maptiler.com/maps/jp-mierune-gray/{z}/{x}/{y}.png?key=${dotenv.env['MAPTILER_API_KEY']}',
                ),
                CircleLayer(circles: [CircleMarker(point: fromPositionToLatlng(data), radius: 100, useRadiusInMeter: true, color: Colors.lightBlue.withOpacity(0.3))],
                ),
                MarkerLayer(markers: [Marker(point: fromPositionToLatlng(data), child: Container(decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle,)))]
                ),
              ],
            ),
          )
    );
  }
}
