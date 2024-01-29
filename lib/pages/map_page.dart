import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:kamon_app_client/utils/from_base64_to_uint8list.dart';

class MapPage extends ConsumerStatefulWidget {
  const MapPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {

  
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(34.985849, 135.7587667);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: GoogleMap(
          zoomControlsEnabled: false,
          cloudMapId: 'f655976e4b276da1',
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 12.0,
          ),
          markers: {
            Marker(
              markerId: MarkerId('m-0001'),
              position: LatLng(35.01016474,135.76853744),
              icon: BitmapDescriptor.fromBytes(fromBase64ToUint8List("iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAQAAAAAYLlVAAAAIGNIUk0AAHomAACAhAAA+gAAAIDoAAB1MAAA6mAAADqYAAAXcJy6UTwAAAACYktHRAD/h4/MvwAAAAd0SU1FB+gBHQchAs4O9/cAAAPySURBVGje7dg7TNRZFMfxD4ICKosISuJaYGKhhZWVoBBjFDVorNTEhEQbC2NMsLKwocWIJiuViZgAhRITjY0mxkYLG7VBgsGI4guD8bG+edwt+A8MCswwD7fhdxtmuDPf37lz5pxzhznNKT1VqPj/4Esc0a3bEUv+PDzPDrcMC4Jht+yQ9yfx65z3SYhbn5y37s/Ay53wbBI8tp45oTy78EJ73ZsSHlv37FWYHXieKpd8mxEfBN9cUpWNjFjuckJ4bF22PBtnsEyD3oTwXg2WZedDgDVuzoi/ac3s3jB3Vrv/Vm+7v2bYUeCHXv9mI/ZF6t1PKgPuq7cos/B5ql31I+kk/OGqavMyhV+t2buk4bH1TrPV6cPzHEoi86f/RhxKVBESHVMwaEBIyXwwYDDF105SmQZPZh39Ew3K0ofHtMY5g0nDB/0z23qQWEVajCaFH9WiKLPwHJU6fU76BD7rVCknU/hVmryddQ681WRV+vBih3Wl/DXsclhx6vACtW4YShkfBENuqFWQmoGd+tOCx1a/nakZKFTntpG04CNuq0tnSCtxVE/K+B5HlaQOj2m1Myk1ozOZaEZjmqfGtVm142tqMteOx7RIvQdJ4R9kfiCJaaVGr2aEv9JoZXbgMa3X5suU8C/arM8mutoxBci3x51fGtOoO/bIR4FjqrOB36jHkEb5oMzxuBnhieNR78/XaEiPjZnGb4qqwc9xC6zV4oMPWqyNnsnX6GdUATZlOvpYtPEWcm22efxuMYEfs5CxU4jh+939zcKEJvB3ox6SloWc8TZa5bEgeK1OuSvjFhaAwqjOLxjHX1GuzmtB8FhV9C7F040n01Wr3TpVgpKomn/1xkeDYL4VclGkSZMi5FphPhj00RtfJ722Uqfds4l/lxeCLhvAPgOC4KGOaDpotVRsSoxNgEu1RhNAh4eCYMA+sEGX4IVds8MHwaNxC/EjWTx+rAZMtjC23o7jH0XPJGlhAj+1hRj+XFwpGnXuFwu/45O0EMM/cjLK5ckWWpWgOIp+2AUXDEenUIwSrVPg+52M/kpgYb3nguC97Tjoe/TZV4D9zipFjsYoouuKFLkePWqUg1Jn7QcVUS58dxDbvRcEz2fqF8t1RIl0SoWLUZTNFkf/j100a/UJgl5bbIkur31qf9m1WHN0OhdVOBUlcMfMvx+VaotGim4jgmGnLZxi31ZPBcFLLwXBU1un2LXQacOCEd3RONOmNFEWlGkfT5rp8PEWpsfHWxhb7cldV8uiU5gJD9siC09tm2HXhIW25G/LpdoNJcCPnUKfvmmjj7cwpD3x4cer3IGkbrg1apLYVeRAtn9FntOc5jSnOaWs/wB7H7yd7K+GGAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyNC0wMS0yOVQwNzoyNTo1NSswMDowMFd2vq0AAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjQtMDEtMjlUMDc6MjU6NTUrMDA6MDAmKwYRAAAAKHRFWHRkYXRlOnRpbWVzdGFtcAAyMDI0LTAxLTI5VDA3OjMzOjAyKzAwOjAwMOm4owAAAABJRU5ErkJggg=="))
            )
          },
        ),
      ),
    );
  }
}
