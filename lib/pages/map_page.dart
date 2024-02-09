import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:kamon_app_client/componets/markers/current_position_buffer_marker.dart';
import 'package:kamon_app_client/componets/markers/current_position_marker.dart';
import 'package:kamon_app_client/componets/markers/sample_latlng_list.dart';
import 'package:kamon_app_client/providers/map_control.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kamon_app_client/providers/crest/crest_list_provider.dart';
import 'package:kamon_app_client/providers/position.dart';
import 'package:kamon_app_client/componets/markers/crest_marker.dart';
import 'package:kamon_app_client/utils/from_position_to_latlng.dart';
import 'package:kamon_app_client/constants.dart';
import 'package:kamon_app_client/providers/position.dart';

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
    final mapController = ref.watch(mapControllerProvider);
    final currentPosition = ref.watch(geoLocatorProvider);
    return currentPosition.when(
      error: (err, _) => Center(child: Text(err.toString())),
      loading: () => const Center(
          child:
              CircularProgressIndicator(color: Color.fromRGBO(33, 32, 156, 1))),
      data: (data) => FlutterMap(
        options: MapOptions(
          initialCenter: fromPositionToLatlng(data),
          initialZoom: 18.0,
        ),
        mapController: mapController,
        children: [
          TileLayer(
            urlTemplate:
                'https://api.maptiler.com/maps/jp-mierune-gray/{z}/{x}/{y}.png?key=${dotenv.env['MAPTILER_API_KEY']}',
            //　TODO:一時的に公開するためのもの。後で削除。
            // urlTemplate: 'https://api.maptiler.com/maps/jp-mierune-gray/{z}/{x}/{y}.png?key=lRnt0N9IfLmKchyLeMi4',
          ),
          CircleLayer(
            circles: [
              CurrentPositionBufferMarker(latLng: fromPositionToLatlng(data)),
            ],
          ),
          MarkerLayer(
            markers: [
              CurrentPositionMarker(latLng: fromPositionToLatlng(data)),
              // TODO:サンプルのため削除
              ...sampleLatlngList.map((e) => CrestMarker(latLng: e)),
            ],
          ),
        ],
      ),
    );
  }
}
