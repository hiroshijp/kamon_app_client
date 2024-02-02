import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kamon_app_client/providers/crest/crest_list_provider.dart';
import 'package:kamon_app_client/componets/crest_marker.dart';

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
    final crestList = ref.watch(crestListProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: crestList.when(
          error: (err, _) => Center(child: Text(err.toString())),
          loading: () => const CircularProgressIndicator(),
          data:(data) => FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(34.985849, 135.7587667),
              initialZoom: 16.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://api.maptiler.com/maps/jp-mierune-gray/{z}/{x}/{y}.png?key=${dotenv.env['MAPTILER_API_KEY']}',
              ),
              MarkerLayer(
                  markers: [
                    ...data.map((crest) => CrestMarker(crest: crest)),
                  ]
              ),
            ],
          ),
        )
      ),
    );
  }
}
